// #docregion
import 'package:angular2/core.dart';

@Component(
    // selector isn't needed, but must be provided
    // https://github.com/dart-lang/angular2/issues/60
    selector: 'my-heroes',
    // #docregion template
    template: '''
      <h2>Heroes</h2>
      <p>Get your heroes here</p>
    '''
    // #enddocregion template
)
class HeroesComponent { }
