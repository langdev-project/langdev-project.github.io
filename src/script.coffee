---
---

###
`script.js`
by Gô SHOEMAKE
###

#  This is just a tiny script to handle the setting of our splash text.

do ->

#  The splash text is stored in the element with id `pulse`.

    pulse = document.getElementById "pulse"


#  If `pulse` doesn't have any children, then there's nothing for us to do.

    return unless children = pulse.children

#  Otherwise, we grab a random child via `Math.random()`.

    n = Math.floor (do Math.random) * children.length

#  Now we iterate over all of the children.
#  For the one we just picked, we unset its `hidden` attribute.
#  For all the others, we make sure it is set.

    for child, index in children
        if index is n then child.removeAttribute "hidden"
        else child.setAttribute "hidden", ""

#  Finally, we make sure our `pulse` is visible by removing the `hidden` attribute on it, if present.

    pulse.removeAttribute "hidden"
