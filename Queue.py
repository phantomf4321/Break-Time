
import random
import numpy as np
from queue import Queue

def simulate_uniform_queue(arrival_rate, num_elements):
    queue = Queue()
    waiting_times = []

    for i in range(num_elements):
        interarrival_time = random.expovariate(arrival_rate)
        arrival_time = i + interarrival_time

        # Generate a random waiting time from a uniform distribution (between 0 and 1)
        waiting_time = random.uniform(0, 1)

        # Add the element to the queue with its arrival time and waiting time
        queue.put((arrival_time, waiting_time))

    while not queue.empty():
        arrival_time, waiting_time = queue.get()

        # Calculate the waiting time for the current element
        waiting_time -= 1

        if waiting_time > 0:
            # If the waiting time is still positive, put the element back in the queue
            queue.put((arrival_time, waiting_time))
        else:
            # The element has finished waiting
            service_time = random.expovariate(1)
            departure_time = arrival_time + service_time
            waiting_times.append(departure_time - arrival_time)

    return waiting_times

def simulate_normal_queue(arrival_rate, num_elements):
    queue = Queue()
    waiting_times = []

    for i in range(num_elements):
        interarrival_time = random.expovariate(arrival_rate)
        arrival_time = i + interarrival_time

        # Generate a random waiting time from a normal distribution with mean 0 and standard deviation 1
        waiting_time = np.random.normal(0, 1)

        # Add the element to the queue with its arrival time and waiting time
        queue.put((arrival_time, waiting_time))

    while not queue.empty():
        arrival_time, waiting_time = queue.get()

        # Calculate the waiting time for the current element
        waiting_time -= 1

        if waiting_time > 0:
            # If the waiting time is still positive, put the element back in the queue
            queue.put((arrival_time, waiting_time))
        else:
            # The element has finished waiting
            service_time = random.expovariate(1)
            departure_time = arrival_time + service_time
            waiting_times.append(departure_time - arrival_time)

    return waiting_times

# Example usage
arrival_rate = 0.5
num_elements = 100

uniform_waiting_times = simulate_uniform_queue(arrival_rate, num_elements)
print("Uniform Waiting Times:", uniform_waiting_times)

normal_waiting_times = simulate_normal_queue(arrival_rate, num_elements)
print("Normal Waiting Times:", normal_waiting_times)
