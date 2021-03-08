library inqvine_core_main;

//* Internal Exports

export 'constants/inqvine_design_constants.dart';

export 'events/inqvine_log_event.dart';

export 'extensions/inqvine_context_extensions.dart';
export 'extensions/inqvine_crypto_extensions.dart';
export 'extensions/inqvine_date_time_extensions.dart';
export 'extensions/inqvine_design_extensions.dart';
export 'extensions/inqvine_number_extensions.dart';
export 'extensions/inqvine_string_extensions.dart';

export 'helpers/inqvine_async_helpers.dart';
export 'helpers/inqvine_design_helpers.dart';

export 'hooks/inqvine_lifecycle_hook.dart';

export 'proto/application.pb.dart';
export 'proto/application.pbenum.dart';
export 'proto/application.pbjson.dart';

export 'services/inqvine_logger_service.dart';
export 'services/inqvine_service_base.dart';
export 'services/inqvine_services.dart';

//* External Exports

export 'package:event_bus/event_bus.dart';
export 'package:get_it/get_it.dart';
export 'package:jiffy/jiffy.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:riverpod/riverpod.dart';
export 'package:logger/logger.dart';

//* Imports

import 'services/inqvine_services.dart';

//* Getters

InqvineServices get inqvine => InqvineServices.instance;
