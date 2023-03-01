using HealthEquityChallenge.Models;

namespace HealthEquityChallenge.Services;

public interface ICarService
{
    List<Car> GetAll();
    Car Get(int id);
    void Save(Car car);
    void Delete(int id);
}
