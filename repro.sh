echo "Running both migrations"
flask db upgrade

echo "Removing second migration -- this is similar to a code rollback"
rm migrations/versions/3090ddfe35ad_second_migration.py

echo "Running migrations again, like what would happen when trying to boot after a rollback"
flask db upgrade