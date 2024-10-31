import torch
import torch.nn as nn
import torch.nn.functional as F

class RockHoundCNN(nn.Module):
    def __init__(self, num_classes):
        super(RockHoundCNN, self).__init__()
        self.conv1 = nn.Conv2d(in_channels=3, out_channels=32, kernel_size=3, stride=1, padding=1)
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2, padding=0)
        self.conv2 = nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1)

        # Compute the flattened size after convolutions and pooling
        self.flattened_size = 64 * 64 * 64  # Adjust based on the output size after pooling

        self.fc1 = nn.Linear(self.flattened_size, 128)  # Adjust as needed
        self.fc2 = nn.Linear(128, num_classes)

    def forward(self, x):
        x = F.relu(self.conv1(x))
        x = F.max_pool2d(x, 2)
        x = F.relu(self.conv2(x))
        x = F.max_pool2d(x, 2)
        x = torch.flatten(x, 1)  # Flattening while preserving batch size
        x = F.relu(self.fc1(x))
        x = self.fc2(x)
        return x