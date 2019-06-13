Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E20DC432F2
	for <lists+linux-rockchip@lfdr.de>; Thu, 13 Jun 2019 08:24:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q64Ocha/kXNbk+veVvM65/RcVYtQ42h1OobqMsRCqA=; b=rCq1uDQ0EmWqo/
	ih/fjbxCnMxob0mTVA4ry3Yuvy8f1dJrp5yGTBTCsff/dOnEWMu6g5rHdniVPXA1xlLq4cXt19eTE
	+dCLkP2wXT8hnQ++cq/5NUoSN//XSukuvlVRvBwb2MrHTiWDxJHa7a8equeEkLMu3GTR6vDitzxEq
	oNAMV0FoSjuG81bR1nUCJCxXVRKMNEetL+pUUNk8V+xMrhBjc0kvEnscfFnn6R7X16ayM8uKMsEKC
	gOi6Yi1e6BeloclS1ARawxxB5UqwhU9otp0SBRCB2jUhqu9TR7CSyYPZQru9aeaNd+HD+AjzezWN6
	erGyxFt8E485QfVGVWXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbJ9c-0001GB-9R; Thu, 13 Jun 2019 06:24:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbJ9W-0001FP-In
 for linux-rockchip@lists.infradead.org; Thu, 13 Jun 2019 06:24:05 +0000
Received: by mail-io1-xd41.google.com with SMTP id r185so15056262iod.6
 for <linux-rockchip@lists.infradead.org>; Wed, 12 Jun 2019 23:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=0NkqYyzZEllxzCeH0+TzKNPJNfPg+rmB+kfUxDzkems=;
 b=gjjiTNgpkxUAVrmR3dFume65AYyrVizupPqnP8G2fhhLxGBmBd4mWj2XgXqBXkOV6Z
 EIYk34jRln7dvx6q00Zu+wjsW43jFn4V8v+6GRZMpDRYCjwwiMp8YuUSLoOWLJKjCuIQ
 SRkHaKghCdHVbg01cLShLoZVb8tYniTSl9r/o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=0NkqYyzZEllxzCeH0+TzKNPJNfPg+rmB+kfUxDzkems=;
 b=GqBNUIjXnoVjI08/op+mQ3Ves2NxI7uAufLR2jc+wMxfV+WvLlhOemgMh+jIPnJLUU
 CfUnYO78RzR7ZT9KBnw0LoSV7Q8ByjCUfrx8RqMllZk7nSm3iyMS8uWiOoopE0dBkRIP
 V7LEEw5rpyOnf2AJtj4pKAcAr21aaKBAjWXHNL8UjlVVLiosY1xynSncvOgIwMMaKLTP
 Kp40eMsMVEPSadTuQhgrv9bxKqnvJV/tqXMXWKGH1rJ79mT3cezbPS5rLB0XyfmsWsHJ
 M9+PzixO17FkxQ/k6taTTH0btgy7dzS9X4Rpi3GjQUUEvZH2qsRemKpJ4ol1Y6LccZQX
 Z/Wg==
X-Gm-Message-State: APjAAAUHFWV/A0Z6L86PhTfZnb56muJQB6IblPt55KhGtBG3vDIpFdXq
 IZbUzbBGwR/fUcGvcmTFjuVDLHBJTyciOf+ObeB6fg==
X-Google-Smtp-Source: APXvYqxTv/XltYB+QaUAuFuDUkDzqnBXUgQmMC/xkDX673jdEJ7Xt8Pr7dULdzz5Jt+8WqStbdIOGxkRc5XD5AialFc=
X-Received: by 2002:a05:6602:2253:: with SMTP id
 o19mr7816426ioo.297.1560407040291; 
 Wed, 12 Jun 2019 23:24:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190611145135.21399-1-jagan@amarulasolutions.com>
 <d52253fb-964d-256d-a420-f92d1f36904f@rock-chips.com>
In-Reply-To: <d52253fb-964d-256d-a420-f92d1f36904f@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Thu, 13 Jun 2019 11:53:49 +0530
Message-ID: <CAMty3ZAe3eAa-PjJZ15J9UACURs9NPFNqrc37FXr0ehq6C_4Vw@mail.gmail.com>
Subject: Re: [PATCH 00/92] ram: rk3399: Add LPDDR4 support
To: Kever Yang <kever.yang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_232403_919289_0026BF01 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: YouMin Chen <cym@rock-chips.com>, U-Boot-Denx <u-boot@lists.denx.de>,
 Simon Glass <sjg@chromium.org>, Akash Gajjar <gajjar04akash@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

T24gVGh1LCBKdW4gMTMsIDIwMTkgYXQgNzoxNCBBTSBLZXZlciBZYW5nIDxrZXZlci55YW5nQHJv
Y2stY2hpcHMuY29tPiB3cm90ZToKPgo+IEhpIEphZ2FuLAo+Cj4gICAgIFZlcnkgZ3JhdGVmdWwg
Zm9yIHlvdSB0byBzZW5kIHRoaXMgcGF0Y2ggc2V0IGZvciBMUEREUjQgc3VwcG9ydC4KPgo+ICAg
ICBCdXQsIDkyIHBhdGNoZXMsIGEgbGl0dGxlIGJpdCB0b28gbXVjaCBmb3IgbWVyZ2UgdGhlbSBv
bmUgYnkgb25lLAo+Cj4gaXMgaXQgcG9zc2libGUgZm9yIFUtQm9vdCB0byBtZXJnZSB0aGlzIGZy
b20gc29tZXdoZXJlIGFmdGVyIHdlIHJldmlldwo+Cj4gYWxsIHRoZXNlIHBhdGNoZXM/CgpBcHBs
eWluZyBlbnRpcmUgc2VyaWVzIHN0aWxsIG5vdCB3b3JraW5nIGZvciBtZSB2aWEgcHdjbGllbnQg
b3IKZ2l0LXB3LCBidXQgSSB1c3VhbGx5IGNyZWF0ZSBhIGJ1bmRsZSBhbmQgYXBwbHkgdGhlbSBp
biBzaW5nbGUgaW5zdGFudApsaWtlIGFzIGJlbG93CgrigrkgZ2l0IGNvbmZpZyBwdy5zZXJ2ZXIg
aHR0cHM6Ly9wYXRjaHdvcmsub3psYWJzLm9yZy8K4oK5IGdpdCBjb25maWcgcHcucHJvamVjdCB1
Ym9vdArigrkgZ2l0IGNvbmZpZyBwdy51c2VybmFtZQrigrkgZ2l0IGNvbmZpZyBwdy5wYXNzd29y
ZArigrkgZ2l0LXB3IGJ1bmRsZSBsaXN0CuKCuSBnaXQtcHcgYnVuZGxlIGFwcGx5IDxpZD4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
