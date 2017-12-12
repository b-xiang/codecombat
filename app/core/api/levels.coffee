fetchJson = require './fetch-json'

module.exports = {
  getByOriginal: (original, options={}) ->
    return fetchJson("/db/level/#{original}/version", _.merge({}, options))
  
  fetchNextForCourse: ({ levelOriginalID, courseInstanceID, courseID, sessionID }, options={}) ->
    if courseInstanceID
      url = "/db/course_instance/#{courseInstanceID}/levels/#{levelOriginalID}/sessions/#{sessionID}/next"
    else
      # TODO: Update this route
      url = "/db/course/#{courseID}/levels/#{levelOriginalID}/next"
    return fetchJson(url, options)
}
