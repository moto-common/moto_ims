.class public Lorg/codeaurora/ims/QImsCallProfile;
.super Ljava/lang/Object;
.source "QImsCallProfile.java"


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 24
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 28
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 34
    return-void
.end method


# virtual methods
.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallType()I
    .locals 2

    .line 128
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRestrictCause()I
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    monitor-exit v0

    return v1

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceType()I
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 40
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 48
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    .line 49
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    .line 50
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v3

    .line 51
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 52
    .local v0, "newImsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    nop

    .line 53
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 54
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 55
    return-object v0
.end method

.method public newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 60
    new-instance v6, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 61
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 62
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 60
    return-object v6
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    monitor-exit v0

    .line 101
    return-void

    .line 100
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 106
    monitor-exit v0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 110
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 112
    monitor-exit v0

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallRestrictCause(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 116
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 118
    monitor-exit v0

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallerNumberVerificationStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 122
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 123
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 124
    monitor-exit v0

    .line 125
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 171
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 90
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 91
    if-eqz p1, :cond_0

    .line 92
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 94
    :cond_0
    monitor-exit v0

    .line 95
    return-void

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 74
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 75
    if-eqz p1, :cond_0

    .line 76
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 78
    :cond_0
    monitor-exit v0

    .line 79
    return-void

    .line 78
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 82
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 83
    if-eqz p1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 86
    :cond_0
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 66
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 67
    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 70
    :cond_0
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
