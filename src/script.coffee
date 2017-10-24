---
---

###
`script.js`
by Gô SHOEMAKE
###

#  This is a tiny script to handle the setting of our splash text.

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

    return

#   - - -

#  This script sets our stylesheet depending on the time of day.

do ->

#  First we get the current date and time.

    now = new Date

#  Then we get our document's stylesheets.
#  Our default preferred stylesheet is "New Legendary"

    stylesheets = document.styleSheets
    preferred = ".day-style"

#  If the time is between 20:00 and 08:00, then it's night.

    hours = do now.getHours
    if hours < 8 or hours >= 20 then preferred = ".night-style"

#  This sets our default stylesheet to link to whatever our preferred stylesheet is.
#  We have to do things this way because Chrome.

    if style = document.querySelector 'link[rel~="stylesheet"]' +
        preferred
            (document.getElementById "default-style").href = style.href

    return
