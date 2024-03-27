--- Keywords Tags
highlight("!DOCTYPE", "reserved")
highlight("a", "reserved")
highlight("abbr", "reserved")
highlight("acronym", "reserved")
highlight("address", "reserved")
highlight("applet", "reserved")
highlight("area", "reserved")
highlight("article", "reserved")
highlight("aside", "reserved")
highlight("audio", "reserved")
highlight("b", "reserved")
highlight("base", "reserved")
highlight("basefont", "reserved")
highlight("bdi", "reserved")
highlight("bdo", "reserved")
highlight("big", "reserved")
highlight("blockquote", "reserved")
highlight("body", "reserved")
highlight("br", "reserved")
highlight("button", "reserved")
highlight("canvas", "reserved")
highlight("caption", "reserved")
highlight("c", "reserved")
highlight("center", "reserved")
highlight("cite", "reserved")
highlight("code", "reserved")
highlight("col", "reserved")
highlight("colgroup", "reserved")
highlight("data", "reserved")
highlight("datalist", "reserved")
highlight("dd", "reserved")
highlight("del", "reserved")
highlight("details", "reserved")
highlight("dfn", "reserved")
highlight("dialog", "reserved")
highlight("dir", "reserved")
highlight("div", "reserved")
highlight("dl", "reserved")
highlight("dt", "reserved")
highlight("em", "reserved")
highlight("embed", "reserved")
highlight("fieldset", "reserved")
highlight("figcaption", "reserved")
highlight("figure", "reserved")
highlight("font", "reserved")
highlight("footer", "reserved")
highlight("form", "reserved")
highlight("frame", "reserved")
highlight("frameset", "reserved")
highlight("h1", "reserved")
highlight("h2", "reserved")
highlight("h3", "reserved")
highlight("h4", "reserved")
highlight("h5", "reserved")
highlight("h6", "reserved")
highlight("head", "reserved")
highlight("header", "reserved")
highlight("hgroup", "reserved")
highlight("hr", "reserved")
highlight("html", "reserved")
highlight("i", "reserved")
highlight("iframe", "reserved")
highlight("img", "reserved")
highlight("input", "reserved")
highlight("ins", "reserved")
highlight("kbd", "reserved")
highlight("label", "reserved")
highlight("legend", "reserved")
highlight("li", "reserved")
highlight("link", "reserved")
highlight("main", "reserved")
highlight("map", "reserved")
highlight("mark", "reserved")
highlight("menu", "reserved")
highlight("meta", "reserved")
highlight("meter", "reserved")
highlight("nav", "reserved")
highlight("noframes", "reserved")
highlight("noscript", "reserved")
highlight("object", "reserved")
highlight("ol", "reserved")
highlight("optgroup", "reserved")
highlight("option", "reserved")
highlight("output", "reserved")
highlight("p", "reserved")
highlight("param", "reserved")
highlight("picture", "reserved")
highlight("pre", "reserved")
highlight("progress", "reserved")
highlight("q", "reserved")
highlight("rp", "reserved")
highlight("rt", "reserved")
highlight("ruby", "reserved")
highlight("s", "reserved")
highlight("samp", "reserved")
highlight("script", "reserved")
highlight("search", "reserved")
highlight("section", "reserved")
highlight("select", "reserved")
highlight("small", "reserved")
highlight("source", "reserved")
highlight("span", "reserved")
highlight("strike", "reserved")
highlight("strong", "reserved")
highlight("sub", "reserved")
highlight("summary", "reserved")
highlight("sup", "reserved")
highlight("svg", "reserved")
highlight("table", "reserved")
highlight("tbody", "reserved")
highlight("td", "reserved")
highlight("template", "reserved")
highlight("textarea", "reserved")
highlight("tfoot", "reserved")
highlight("th", "reserved")
highlight("thead", "reserved")
highlight("time", "reserved")
highlight("title", "reserved")
highlight("tr", "reserved")
highlight("track", "reserved")
highlight("tt", "reserved")
highlight("u", "reserved")
highlight("ul", "reserved")
highlight("var", "reserved")
highlight("video", "reserved")
highlight("wbr", "function")

--- Special Char
highlight("/", "reserved")
highlight("<", "binary")
highlight(">", "binary")

--- User Comments
highlight_region("<!--", "-->", "comments", false)

--- Comments
-- HELLP ME

function detect_variables(content)
    local variable_names = {}
    local lines = content:gmatch("[^\r\n]+")

    for line in lines do
        local tag = line:match("<(.-)[%(>]")
        if tag then
            tag_done = "</" .. tag .. ">"
            table.insert(variable_names, tag_done)
        end
    end

    return variable_names
end
-- HTML doesn't have functions
