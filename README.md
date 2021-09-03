# Constraint

This package is used to programmatically add constraints. It works great with stack views.

 Important:
 - This package adds some convenient extension functions to UIView so you can naturally add constraints directly from a view to another (see Usage).



# Usage:
    // - Stack Views -
    buttonsHorizontalStackView = UIStackView(arrangedSubviews: [saveContainerView, infoContainerView, adminContainerView, UIView()])
    buttonsHorizontalStackView.axis = .horizontal

    stackView = UIStackView(arrangedSubviews: [
                                               givenNameContainerView,
                                               familyNameContainerView,
                                               plateNumberContainerView,
                                               submitContainerView,
                                               buttonsHorizontalStackView])
    stackView.axis = .vertical
    view.addSubview(stackView)

    // - Constraints -
    stackView.constrainTo(view.safeAreaLayoutGuide, .allBorders)

    buttonsHorizontalStackView.constrainHeightTo(72)
    saveBackgroundView.constrainTo(saveContainerView, [.top(16), .bottom(-16), .leading(16), .trailing])
    infoBackgroundView.constrainTo(infoContainerView, [.top(16), .bottom(-16), .leading(8), .trailing])
    adminBackgroundView.constrainTo(adminContainerView, [.top(16), .bottom(-16), .leading(8), .trailing])

    submitContainerView.constrainHeightTo(72)
    submitBackgroundView.constrainTo(submitContainerView, .allBorders(16))



# License

The contents of this repository is licensed under the
[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).



# Contact

ludvigsahlin2@gmail.com
