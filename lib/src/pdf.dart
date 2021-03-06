import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class PDF {
  final bool enableSwipe;
  final bool swipeHorizontal;

  /// if pdf is protected u should provide a password
  final String password;
  final bool nightMode;
  final bool autoSpacing;
  final bool pageFling;
  final bool pageSnap;

  /// init page
  final int defaultPage;
  final FitPolicy fitPolicy;
  final bool fitEachPage;

  /// If not null invoked once the web view is created.
  final PDFViewCreatedCallback onViewCreated;

  /// If not null invoked once the web view is created.
  final RenderCallback onRender;
  final PageChangedCallback onPageChanged;
  final ErrorCallback onError;
  final PageErrorCallback onPageError;

  /// Which gestures should be consumed by the pdf view.
  ///
  /// It is possible for other gesture recognizers to be competing with the pdf view on pointer
  /// events, e.g if the pdf view is inside a [ListView] the [ListView] will want to handle
  /// vertical drags. The pdf view will claim gestures that are recognized by any of the
  /// recognizers on this list.
  ///
  /// When this set is empty or null, the pdf view will only handle pointer events for gestures that
  /// were not claimed by any other gesture recognizer.
  final Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers;

  const PDF({
    this.onViewCreated,
    this.onRender,
    this.onPageChanged,
    this.onError,
    this.onPageError,
    this.gestureRecognizers,
    this.enableSwipe = true,
    this.swipeHorizontal = false,
    this.password,
    this.nightMode = false,
    this.autoSpacing = true,
    this.pageFling = true,
    this.pageSnap = true,
    this.fitEachPage = true,
    this.defaultPage = 0,
    this.fitPolicy = FitPolicy.WIDTH,
  });
}
