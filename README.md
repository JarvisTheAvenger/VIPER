# Viper-Architecture


VIPER

View,

Interactor,

Presenter,

Entity,

Router

View : Responsibility of view is to send user actions to the presenter and show whatever the presenter asks it to.

Interactor : It has the business logic for the app specified by a use case.

Presenter : Contains the view logic for preparing content for display and for reacting to user interactions.

Entity : The Basic model for objects used by interaction.

Router : Contains logic for routing of screens.

Why VIPER?

Our traditional MVC and MVM architecture that we are all acquainted with have one primary problem i.e Bulky Controllers. Since all our business logic has been dumped in the controller, at the end we see a huge and fat controller which becomes difficult to manage if our project is to be scalable. So these are the primary reasons why we need VIPER:

1. To make the structure more modular.
2. To build the application on the Single Responsibility Principle.
3. To reduce the load and dependency on controllers.
4. To build the app on basis of use cases or behaviour based.
