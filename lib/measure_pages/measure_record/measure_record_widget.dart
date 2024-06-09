import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/measure_pages/mesurement_slider/mesurement_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'measure_record_model.dart';
export 'measure_record_model.dart';

class MeasureRecordWidget extends StatefulWidget {
  const MeasureRecordWidget({
    super.key,
    required this.time,
  });

  final int? time;

  @override
  State<MeasureRecordWidget> createState() => _MeasureRecordWidgetState();
}

class _MeasureRecordWidgetState extends State<MeasureRecordWidget> {
  late MeasureRecordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeasureRecordModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          title: Text(
            '今，どんな気持ち？',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Inter',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    final measureItems = FFAppState()
                        .MeasurementItems
                        .where((e) => valueOrDefault<bool>(
                              e.valid,
                              false,
                            ))
                        .toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: measureItems.length,
                      itemBuilder: (context, measureItemsIndex) {
                        final measureItemsItem =
                            measureItems[measureItemsIndex];
                        return wrapWithModel(
                          model: _model.mesurementSliderModels.getModel(
                            measureItemsIndex.toString(),
                            measureItemsIndex,
                          ),
                          updateCallback: () => setState(() {}),
                          child: MesurementSliderWidget(
                            key: Key(
                              'Keyo7j_${measureItemsIndex.toString()}',
                            ),
                            parameter1: measureItemsItem.name,
                            parameter2: measureItemsItem.bottomName,
                            parameter3: measureItemsItem.upperName,
                            parameter4: measureItemsItem.step,
                            initialvalue: valueOrDefault<double>(
                              (FFAppState().TemporaryResult.isNotEmpty) == false
                                  ? 0.0
                                  : valueOrDefault<double>(
                                      FFAppState()
                                          .TemporaryResult
                                          .where((e) =>
                                              e.type.name ==
                                              measureItemsItem.name)
                                          .toList()
                                          .last
                                          .result,
                                      0.0,
                                    ),
                              0.0,
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        while (_model.repeater <
                                FFAppState().MeasurementItems.length
                            ? true
                            : false) {
                          FFAppState().addToTemporaryResult(MeasuredItemStruct(
                            passedtime: widget.time,
                            type:
                                FFAppState().MeasurementItems[_model.repeater],
                            result:
                                _model.mesurementSliderModels.getValueAtIndex(
                              _model.repeater,
                              (m) => m.sliderValue,
                            ),
                          ));
                          setState(() {});
                          _model.repeater = _model.repeater + 1;
                          setState(() {});
                        }
                        context.safePop();
                      },
                      text: '登録する',
                      options: FFButtonOptions(
                        width: 200.0,
                        height: 57.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
