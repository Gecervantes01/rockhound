import torch
import torch.nn as nn
import torch.nn.functional as F

# REMINDER: look into increasing out channels and compare performance
class RockHoundCNN(nn.Module):
    """
    A class defining the convolutional nueral network to be used for
    mineral identification.
    """

    def __init__(self, num_classes):
        """
        Defining the CNN's layers.
        
        The layers consist of:
        - Convolutional
            Detects features in the input data(images).
        - Pooling
            Reduces the size of the data.
        - Flattening
            Converts feature maps into a one-dimensional vector.
        - Fully Connected
            Combines previously learned features and generates
            final output.
        """
        super(RockHoundCNN, self).__init__()
        self.conv1 = nn.Conv2d(in_channels=3, out_channels=32, kernel_size=3, stride=1, padding=1)
        self.pool = nn.MaxPool2d(kernel_size=2, stride=2, padding=0)
        self.conv2 = nn.Conv2d(32, 64, kernel_size=3, stride=1, padding=1)

        self.flattened_size = 64 * 64 * 64
        
        self.fc1 = nn.Linear(self.flattened_size, 128)
        self.fc2 = nn.Linear(128, num_classes)

    def forward(self, inTensor):
        """
        Defines how the input data moves through the network upon each pass.

        Parameters:
        ----------
        self : RockHoundCNN
            Instance of RockHoundCNN class.

        inTensor : torch.Tensor
            The input tensor.
        """
        inTensor = F.relu(self.conv1(inTensor))
        inTensor = F.max_pool2d(inTensor, 2)
        inTensor = F.relu(self.conv2(inTensor))
        inTensor = F.max_pool2d(inTensor, 2)
        inTensor = torch.flatten(inTensor, 1)
        inTensor = F.relu(self.fc1(inTensor))
        inTensor = self.fc2(inTensor)
        return inTensor