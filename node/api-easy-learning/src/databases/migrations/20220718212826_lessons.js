/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.up = function(knex) {
  return knex.schema.createTable('lessons', function(table) {
    table.increments();
    table.string('title');
    table.string('description');
    table.string('videoId');
    table.integer('instructorId')
      .unsigned()
      .notNullable()
      .references('id')
      .inTable('instructor')
      .onDelete('CASCADE');
    table.integer('courseId')
      .unsigned()
      .notNullable()
      .references('id')
      .inTable('course')
      .onDelete('CASCADE');
  });
};

/**
 * @param { import("knex").Knex } knex
 * @returns { Promise<void> }
 */
exports.down = function(knex) {
  return knex.schema.dropTable('lessons')
};
