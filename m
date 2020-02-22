Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FA0169203
	for <lists+linux-rockchip@lfdr.de>; Sat, 22 Feb 2020 23:04:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5YTD9hIG+pweQLqYGdWmmAuaObSgOjfm7V+eq6xvtr8=; b=JA41a+qCsFJurD
	qGsaJMIIA4PSFJCGnOLWjpo6/yqXqF/N/8C9PwzttfEjhdT2AvUKqZhJZkQivMTQswgx1cWZJ+vb4
	r0klpMv9576zXEdqizzpVhDejMwa6ViyCMESUjHzLYcflM6x5OeBZCoWBz8PgGhLop5hQOD2g4/4d
	A76rvyaqMRUcOQxP0dKjaTaVhJnTkut20a519IbPvQuHeBdpkATYlZgkRCbQFk2IE3KnHLR3Uq3ht
	cmoWTtkTpatj4MPIeN/I9p0EqwN0urDcxulY+4C4ZLB2mj3tst5J9dNWbqnxbsfDXgPuYnBWWJ6hl
	nJO5iY8iXI/xgpGqIm6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5ctI-0006PW-V5; Sat, 22 Feb 2020 22:04:52 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5ctC-0006KH-PQ; Sat, 22 Feb 2020 22:04:48 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so5539728wmj.3;
 Sat, 22 Feb 2020 14:04:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6UYYZbApbZsahGyunKgNImaPux/N+TMxTyzK7wQqbw=;
 b=RZWyUZLk97pzOEiYzgmzB89sc1Bwnug6G48w+yV9zxEwhg9oHn+Qmtun6mlEam4R9N
 ynpl4GU03wIY6egej0Y4nKvJTZg1LagXZe8vNXvkgpMSKK3uRWSGmuKDmUyS6EcfDWXL
 8iz0foFlztubOEBwp2SnkeB3tKp+6HoQ/XCbof/bWtKxhg/VLogkEu7JrK58uKSRtWaI
 imNLZ4cP90wkcvLjshM/r9OI3pjUs4YIGjvTapAa139M7P+oalYArnnA4+ECw+lazk2w
 X60iiorwqugsI5DkIZd+lk+5F1a07+J+6WTKHb6UxQf3Z6v/cDjQOOu4xN5R0nHUy+aA
 4bBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f6UYYZbApbZsahGyunKgNImaPux/N+TMxTyzK7wQqbw=;
 b=aKtnlyso6uMJSKMAUykxLze267rqGXM3grvFlBDRK18rsQ+GzsRXyFNdaHPm+rCVLM
 ITwgpE+0LhW9XBjtz4UU+Wn/N8UeJcF3gvNGN/KN32Jc2jKSwonVf1Jn5Wp+dur3cYoq
 b/Dc+I+VKfZqH2/URryxScFMccI98VBOBZa4PU1T68tB8bOPW4aBu773L5Qm/KqY2R67
 Q72OblEaVLnW8BEvXUviBh2+mTIOE/wIsICU94qQUDI+IWSwLqk0VUzEE6oxNfr39/0E
 /8OMXsZGFJHmlhhc+RDPT81EJHB+M4yt3l9Uu+uj0um9yRdkIuxWgNihQxS+v5FLPRE0
 q2JA==
X-Gm-Message-State: APjAAAXf9Y/JVrYPaIKs/Qp7l/f8YuBe5yDYiCpXZy+Cx+kkJPreuREI
 XUTq5sZ4Rw9DGzDGoron6qw=
X-Google-Smtp-Source: APXvYqyfdi+JXp0MxngH5Bq+GtkY2TQMY1vKoP54zc4iYXW8MDmAPUoZxpWIHiELs6qqIKdd6Qb55A==
X-Received: by 2002:a1c:b0c3:: with SMTP id z186mr11652445wme.36.1582409084970; 
 Sat, 22 Feb 2020 14:04:44 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id
 q130sm11151738wme.19.2020.02.22.14.04.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Feb 2020 14:04:44 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: yuq825@gmail.com,
	dri-devel@lists.freedesktop.org
Subject: [PATCH RFC v3 0/2] drm: lima: devfreq and cooling device support
Date: Sat, 22 Feb 2020 23:04:30 +0100
Message-Id: <20200222220432.448115-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_140446_855907_69FCB6C7 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, tomeu.vizoso@collabora.com, linux-pm@vger.kernel.org,
 airlied@linux.ie, linux-kernel@vger.kernel.org, steven.price@arm.com,
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

Test results from a Meson8m2 board:
TEST #1: glmark2-es2-drm --off-screen in an infinite loop while cycling
         through all available frequencies using the userspace governor

     From  :   To
           : 182142857 318750000 425000000 510000000 637500000   time(ms)
  182142857:         0      1274      1274      1273      1279   5399468
  318750000:      1274         0      1274      1273      1272   5114700
  425000000:      1276      1274         0      1272      1271   5122008
  510000000:      1909      1273      1273         0       636   5274292
* 637500000:       640      1272      1272      1273         0   5186796
Total transition : 24834

TEST #2: glmark2-es2-drm --off-screen in an infinite loop with the
         simple_ondemand governor
     From  :   To
           : 182142857 318750000 425000000 510000000 637500000   time(ms)
  182142857:         0         0         0         0       203    318328
  318750000:        53         0         0         0        21     56044
  425000000:        27        18         0         0         2     34172
  510000000:        27         6        14         0         1     41348
* 637500000:        95        50        33        48         0   2085312


Changes since RFC v2 at [1]:
- added #cooling-cells to the dt-bindings (new patch #1)
- skip devfreq initialization when the operating-points-v2 property is
  absent
- call dev_pm_opp_set_regulators() so devfreq will actually manage the
  mali-supply regulator
- rebased on top of drm-misc-next-2020-02-21

Changes since RFC v1 at [0]:
- added lock to protect the statistics as these can be written 
  concurrently for example when the GP and PP IRQ are firing at the
  same time. Thanks to Qiang Yu for the suggestion!
- updated the copyright notice of lima_devfreq.c to indicate that the
  code is derived from panfrost_devfreq.c. Thanks to  Chen-Yu Tsai  for
  the suggestion!
- I did not unify the code with panfrost yet because I don't know where
  to put the result. any suggestion is welcome though!


[0] https://patchwork.freedesktop.org/series/70967/
[1] https://patchwork.kernel.org/cover/11311293/


Martin Blumenstingl (2):
  dt-bindings: gpu: mali-utgard: Add the #cooling-cells property
  drm/lima: Add optional devfreq and cooling device support

 .../bindings/gpu/arm,mali-utgard.yaml         |   4 +
 drivers/gpu/drm/lima/Kconfig                  |   1 +
 drivers/gpu/drm/lima/Makefile                 |   3 +-
 drivers/gpu/drm/lima/lima_devfreq.c           | 215 ++++++++++++++++++
 drivers/gpu/drm/lima/lima_devfreq.h           |  15 ++
 drivers/gpu/drm/lima/lima_device.c            |   4 +
 drivers/gpu/drm/lima/lima_device.h            |  18 ++
 drivers/gpu/drm/lima/lima_drv.c               |  14 +-
 drivers/gpu/drm/lima/lima_sched.c             |   9 +
 drivers/gpu/drm/lima/lima_sched.h             |   3 +
 10 files changed, 283 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
