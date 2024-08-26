import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:go_router/go_router.dart";
import "package:interactive_slider/interactive_slider.dart";
import "package:iot_controller/src/blocs/led_mode.dart";
import "package:iot_controller/src/blocs/periodic_task.dart";
import "package:iot_controller/src/blocs/product.dart";
import "package:iot_controller/src/models/products/base_product.dart";
import "package:iot_controller/src/models/products/led/led_panel.dart";
import "package:iot_controller/src/models/products/led/modes/led_mode.dart";
import "package:iot_controller/src/ui/celery_task/periodic_task_list_view.dart";
import "package:iot_controller/src/ui/customColors.dart";
import "package:iot_controller/src/ui/products/base_product/update_ip_alert_view.dart";
import "package:iot_controller/src/ui/products/led/modes/led_mode_list_view.dart";
import "package:iot_controller/src/ui/utils/capitalize.dart";
import "package:iot_controller/src/ui/utils/on_off_button.dart";

import "modes/led_mode_details_view.dart";

class LedPanelDetailsView extends StatefulWidget {
  final Function(BaseProduct) callbackUpdateProject;

  const LedPanelDetailsView({super.key, required this.callbackUpdateProject});

  @override
  State<LedPanelDetailsView> createState() => _LedPanelDetailsViewState();
}

class _LedPanelDetailsViewState extends State<LedPanelDetailsView> {
  late Color colorBrightness;
  late double productBrightness;
  late Function(BaseProduct) callbackUpdateProject;

  Future<bool> refreshLedPanel(BuildContext context) async {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(RetrieveBaseProductEvent(
        product: state.product!, products: state.products));
    return true;
  }

  void callbackDeleteLedPanel(BuildContext context) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(DestroyBaseProductEvent(
        product: state.product!, products: state.products));
    context.pushNamed("project_detail");
  }

  void updateProduct(BuildContext context, Map<String, dynamic> fields) {
    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;

    context.read<BaseProductGRPCBloc>().add(PartialUpdateBaseProductEvent(
        product: state.product!, fields: fields, products: state.products));
  }

  void updatePeriodicTask(BuildContext context, Map<String, dynamic> fields) {
    PeriodicTaskState state =
        BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    context.read<PeriodicTaskGRPCBloc>().add(PartialUpdatePeriodicTaskEvent(
        task: state.task!, fields: fields, tasks: state.tasks));
  }

  void setLedMode(LedMode mode) {
    LedModeState ledModeState = BlocProvider.of<LedModeGRPCBloc>(context).state;

    context
        .read<LedModeGRPCBloc>()
        .add(GetLedModeEvent(mode: mode, modes: ledModeState.modes));
  }

  @override
  void initState() {
    super.initState();
    callbackUpdateProject = widget.callbackUpdateProject;

    BaseProductState state =
        BlocProvider.of<BaseProductGRPCBloc>(context).state;
    productBrightness = (state.product! as LedPanel).brightness;
    colorBrightness =
        Color.lerp(Colors.black, Colors.yellow, productBrightness)!;
  }

  Widget headerView(
    BuildContext context,
    BaseProductState state,
    String titleView,
    Widget bodyView,
    Widget? buttons,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titleView,
              style: const TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
              )),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              if (state.products == []) {
                context
                    .read<BaseProductGRPCBloc>()
                    .add(GetBaseProductListEvent([]));
              }
              context.pop("/product_detail");
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                context.push("/settings");
              },
            ),
          ],
        ),
        body: Padding(padding: const EdgeInsets.all(16), child: bodyView),
        floatingActionButton: buttons ?? const SizedBox());
  }

  Widget buttonDecoration(String title, Function callbackButton,
      Widget? callbackWidget, Function? callbackClosePopup) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        )),
        onPressed: () {
          if (callbackWidget != null) {
            callbackButton(context, title, callbackWidget, callbackClosePopup);
          } else {
            callbackButton(context);
          }
        },
        child: Container(
          // decoration: BoxDecoration(
          //     color: Theme.of(context).colorScheme.surface,
          //     borderRadius: const BorderRadius.all(Radius.circular(16))),
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.width / 6,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ));
  }

  void confirmationPopupDelete(
      BuildContext context, String title, Widget? a, Function? b) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              insetPadding: const EdgeInsets.all(50),
              content: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop(false);
                          return;
                        },
                        child: const Text(
                          'Cancel',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          callbackDeleteLedPanel(context);
                          Navigator.of(context).pop();
                        },
                        child: const Text(
                          'Submit',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  )),
            ));
  }

  void confirmationPopup(BuildContext context, String title,
      Widget callbackWidget, Function? callbackClosePopup) async {
    await showDialog(
        context: context,
        builder: (BuildContext context) => PopScope(
              onPopInvokedWithResult: (bool didPop, _) {
                if (callbackClosePopup != null) {
                  // callbackClosePopup(mode);
                }
              },
              child: AlertDialog(
                  title: Text(
                    title,
                    textAlign: TextAlign.center,
                  ),
                  insetPadding: const EdgeInsets.all(50),
                  content: SizedBox(
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                    callbackWidget,
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop(false);
                            return;
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Submit',
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    )
                  ]))),
            ));
  }

  Widget ledPanelBuild(BuildContext context, BaseProductState state) {
    final LedPanel product = state.product! as LedPanel;
    // final periodicTaskState =
    //     BlocProvider.of<PeriodicTaskGRPCBloc>(context).state;

    // move that in the previous context or initstate
    // context.read<PeriodicTaskGRPCBloc>().add(QueryPeriodicTaskEvent(
    //       classType: "BaseProduct",
    //       classId: state.product!.id,
    //       tasks: periodicTaskState.tasks,
    //     ));
    setLedMode(product.mode);
    final Map<String, Widget> tabs = {
      "Product details": SingleChildScrollView(
          child: Column(children: [
        const SizedBox(height: 10),
        // add categories
        LedModeDetailsView(
          callbackUpdateProductLedMode: updateProduct,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonDecoration(
                "Update IP",
                confirmationPopup,
                IpUpdateAlertView(
                    ipAddress: product.ipAddress,
                    ipPort: product.ipPort,
                    callbackUpdateIp: updateProduct),
                null),
            const SizedBox(width: 20),
            buttonDecoration(
              "Mode Selection",
              confirmationPopup,
              LedModeListView(
                  onlyBody: true,
                  callbackUpdateProductLedMode: updateProduct),
              setLedMode,
            )
          ],
        ),
        const SizedBox(height: 30),
        InteractiveSlider(
            unfocusedOpacity: 0.8,
            unfocusedHeight: 25,
            focusedHeight: 40,
            unfocusedMargin: const EdgeInsets.symmetric(horizontal: 0),
            foregroundColor: colorBrightness,
            backgroundColor: Theme.of(context).colorScheme.surface,
            iconGap: 16,
            onChanged: (value) {
              setState(() {
                productBrightness = double.parse(value.toStringAsFixed(2));
                colorBrightness = Color.lerp(
                  Colors.black,
                  Colors.yellow,
                  productBrightness,
                )!;
              });
            },
            onProgressUpdated: (_) {
              updateProduct(context, {"brightness": productBrightness});
            }),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buttonDecoration(
                "Delete Product", confirmationPopupDelete, Container(), null),
            const SizedBox(height: 20),
            buttonDecoration("Refresh Product", refreshLedPanel, null, null),
            const SizedBox(width: 20),
            OnOffButton(
              status: product.status,
              callbackUpdateStatus: updateProduct,
            ),
          ],
        ),
      ])),
      "Tasks": PeriodicTaskListView(
        classType: "Product",
        classId: state.product!.id,
        onlyBody: true,
      )
    };

    Widget decorationBlock(BuildContext context, Widget bodyView) {
      final customColors = Theme.of(context).extension<CustomColors>()!;

      return Container(
          decoration: BoxDecoration(
              color: customColors.lightBackground,
              borderRadius: const BorderRadius.all(Radius.circular(16))),
          child: Padding(padding: const EdgeInsets.all(16), child: bodyView));
    }

    return headerView(
        context,
        state,
        product.name.capitalize,
        DefaultTabController(
          length: tabs.length,
          child: decorationBlock(
              context,
              Column(children: [
                TabBar(
                    tabs: tabs.keys
                        .map((String name) => Tab(text: name))
                        .toList()),
                Expanded(child: TabBarView(children: tabs.values.toList())),
              ])),
        ),
        null
        // Column(
        //   mainAxisAlignment: MainAxisAlignment.end,
        //   children: [
        //     DeletePopup(
        //         name: "led_panel",
        //         objectName: product.name,
        //         heroTag: "led_panel_delete_button",
        //         deleteCallBack: callbackDeleteLedPanel,
        //         onPressedCallBack: () {}),
        //     const SizedBox(height: 10),
        //     RefreshPopup(
        //       heroTag: "led_panel_refresh_button",
        //       onPressedCallBack: refreshLedPanel,
        //     )
        //   ],
        // )
        );
  }

  Widget errorBuild(BuildContext context, BaseProductState errorState) {
    return headerView(
      context,
      errorState,
      "Error Led panel",
      Center(child: Text(errorState.message)),
      null,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BaseProductGRPCBloc, BaseProductState>(
        builder: (context, state) {
      if (state is BaseProductListInitial || state is BaseProductLoading) {
        return const Center(child: CircularProgressIndicator());
      } else if (state is GetBaseProductSuccess ||
          state is RetrieveBaseProductSuccess ||
          state is UpdateBaseProductSuccess ||
          state is CreateBaseProductSuccess) {
        return ledPanelBuild(context, state);
      } else {
        return errorBuild(context, state);
      }
    });
  }
}
