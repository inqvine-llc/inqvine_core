library inqvine_core;

//* Internal Exports

export 'events/inqvine_log_event.dart';
export 'events/inqvine_event_bus.dart';

export 'extensions/inqvine_context_extensions.dart';
export 'extensions/inqvine_date_time_extensions.dart';
export 'extensions/inqvine_string_extensions.dart';

export 'hooks/inqvine_lifecycle_hook.dart';

export 'proto/application.pb.dart';
export 'proto/application.pbenum.dart';
export 'proto/application.pbjson.dart';

export 'services/inqvine_logger_service.dart';
export 'services/inqvine_service_base.dart';
export 'services/inqvine_services.dart';

//* External Exports

export 'package:get_it/get_it.dart';
export 'package:flutter_hooks/flutter_hooks.dart';
export 'package:flutter_riverpod/flutter_riverpod.dart';
export 'package:hooks_riverpod/hooks_riverpod.dart';
export 'package:riverpod/riverpod.dart';

//* Imports

import 'services/inqvine_services.dart';

//* Getters

InqvineServices get inqvine => InqvineServices.instance;
