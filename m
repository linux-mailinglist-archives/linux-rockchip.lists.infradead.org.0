Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA3111FB6A
	for <lists+linux-rockchip@lfdr.de>; Sun, 15 Dec 2019 22:12:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZPNu7jjTcfDQXudJL4lXr6UYD45w/MTmaOBcrPNsaho=; b=oHrVEBzh9BYjNe
	JxRVsnQKuSFXWUUjS0wu/R4a7SOYXsHMg2+5k9CvoLPpp5c3hKPoSCsAu2jGAv6wKwTE7hBY3Scqk
	YQS0VkfLNMScVKgKu/Gvapw3BSELy/5xMsMVaz2fa5LSiCyx0aRh+L/57gihTcdwllZH77HrK53KJ
	vch6+d3BZj9+A67W6+PCFRWRaZpqYznk5ay8RXTv40IsF2O9AiIvqWRTz6J+2254++zZUrIzkDbiE
	6qE9Yt67qAdIiH1xczULU2VeZ5cJtOPVHeKFTJk2Uj5y5zXihoHzL3wPZlpG+ZYreSwW99x9TD43d
	Mlo2p00GdFSw65hFCt+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igbBw-0003S5-KO; Sun, 15 Dec 2019 21:12:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igbBs-0003Qo-JU; Sun, 15 Dec 2019 21:12:37 +0000
Received: by mail-wm1-x344.google.com with SMTP id b72so2499006wme.4;
 Sun, 15 Dec 2019 13:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y3g/A/VhKALqZSKzxwKBBQCqFaLT6bu0ReDrDf4DLQc=;
 b=ZCtFipn4ACffkMmwhawkSiNoVgx0+1I/zetuvwljhG+tWyZ0QQPaYyTf0tYB3xkngk
 6Zdhi3lnfLaSVuaQ1DqhKu1f/SKPj5x54V3ruUFI3TrsEfeMqsB2gcJLKV59QYW9WVrS
 Tf8W2Vez+GWK2BdLTjqd69ZTyInxjiH22HRxCj3h2cYInl4jj2OhyBxX+t1t8OIcaBPU
 d8YwQjidrlvmNzBDYimEfKgMzxiXGIffGNSy509VGvm+HlZ5Yy9P3bC9XKTeKsS2VAR5
 tuUCD+Wzn/d1Wq8Qko4UIOccdH5ozey4wwt1KKWzVwWjaCUvOt2jN1q22S5O/YmLQMQR
 GrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y3g/A/VhKALqZSKzxwKBBQCqFaLT6bu0ReDrDf4DLQc=;
 b=KuakcfMRhXSOuCSNF+2gft6XnvQgoJSLSxo9x6b19nJv1dmK7DXKthU5iNpdoy/gGY
 05mbiDOvTjBfRvtGSLtxsyVb6FZwwUATLO5Hh7eXZupcDR/OBdGKMWFfpjCoLeo5pva7
 bKuMV0gvIWC8GjI500sEP3p8jpLAp9yNLhHN9IehFbOl11ap2tO7UrApc8yioNALdeOU
 +h9Qa5zlzbJ5yGqTJloHhY6zeq9YIclnPgZbZjEdrTzCjwod1taUGXO7tnMNk/OtHZ1x
 G0EtezQMO2oYj2xwjkJpswkEVzNrfVFBya2S6lVye76t1ky4Fq3fDjDN6OzCflC6WfaB
 q1Ag==
X-Gm-Message-State: APjAAAWxYpV1sl6CN+T8AA5vP+a/F2GMONC08316zmAXTaWfQojhKgkR
 69IOoPwH2/anP+5tlOEhbe4=
X-Google-Smtp-Source: APXvYqxJS/WP2zOOmRW0orqTzZD1jmdig6IvEjlAtgAQFwQIvIMmtkBtCQxOdm7tqfX0VPIRQxJT0Q==
X-Received: by 2002:a7b:c342:: with SMTP id l2mr27920141wmj.20.1576444354953; 
 Sun, 15 Dec 2019 13:12:34 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1370FCC00428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:370f:cc00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id j12sm19888598wrw.54.2019.12.15.13.12.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 13:12:34 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: yuq825@gmail.com, dri-devel@lists.freedesktop.org,
 lima@lists.freedesktop.org
Subject: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Sun, 15 Dec 2019 22:12:22 +0100
Message-Id: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_131236_665623_F42EE624 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, airlied@linux.ie,
 linux-kernel@vger.kernel.org, steven.price@arm.com,
 linux-rockchip@lists.infradead.org, wens@csie.org,
 alyssa.rosenzweig@collabora.com, daniel@ffwll.ch,
 linux-amlogic@lists.infradead.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This is my attempt at adding devfreq (and cooling device) support to
the lima driver.
I didn't have much time to do in-depth testing. However, I'm sending
this out early because there are many SoCs with Mali-400/450 GPU so
I want to avoid duplicating the work with somebody else.

The code is derived from panfrost_devfreq.c which is why I kept the
Collabora copyright in lima_devfreq.c. Please let me know if I should
drop this or how I can make it more clear that I "borrowed" the code
from panfrost.

I am seeking comments in two general areas:
- regarding the integration into the existing lima code
- for the actual devfreq code (I had to adapt the panfrost code
  slightly, because lima uses a bus and a GPU/core clock)

My own TODO list includes "more" testing on various Amlogic SoCs.
So far I have tested this on Meson8b and Meson8m2 (which both have a
GPU OPP table defined). However, I still need to test this on a GXL
board (which is currently missing the GPU OPP table).


Martin Blumenstingl (1):
  drm/lima: Add optional devfreq support

 drivers/gpu/drm/lima/Kconfig        |   1 +
 drivers/gpu/drm/lima/Makefile       |   3 +-
 drivers/gpu/drm/lima/lima_devfreq.c | 162 ++++++++++++++++++++++++++++
 drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
 drivers/gpu/drm/lima/lima_device.c  |   4 +
 drivers/gpu/drm/lima/lima_device.h  |  11 ++
 drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
 drivers/gpu/drm/lima/lima_sched.c   |   7 ++
 drivers/gpu/drm/lima/lima_sched.h   |   3 +
 9 files changed, 217 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
