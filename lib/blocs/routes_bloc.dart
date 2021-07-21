import 'package:rock_carrot/blocs/base/base_bloc.dart';
import 'package:rock_carrot/database/sql.dart';
import 'package:rock_carrot/database/sql_routes.dart';
import 'package:rock_carrot/models/sandstein/rock.dart';
import 'package:rock_carrot/models/sandstein/route.dart';
import 'package:rock_carrot/models/sandstein/baseitem.dart';

class RoutesBloc extends BaseBloc {
  @override
  Future<List<Baseitem>> requestData(Baseitem? baseitem) async {
    final sqlResults = await SqlHandler().queryRoutes((baseitem as Rock).id);
    return sqlResults.map((sqlRow) => Route.fromJson(sqlRow)).toList();
  }

  @override
  Future<int> updateData(Baseitem? baseitem) {
    // TODO: implement updateData
    throw UnimplementedError();
  }

  @override
  Future<int> updateDataIntensive(Baseitem baseitem) {
    // TODO: implement updateDataIntensive
    throw UnimplementedError();
  }
}
