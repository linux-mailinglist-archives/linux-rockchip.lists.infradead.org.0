Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D29EA12B62D
	for <lists+linux-rockchip@lfdr.de>; Fri, 27 Dec 2019 18:37:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nI1rcpvBXf/ZgZdzFyekvDzYLOXHXBtMfnKC+gnOPC0=; b=O9cGcib2QWx/3J
	ammC02O5WQ4Cz8jDVcYuhn0q+H8OS+mdE4JVowLDEjPY0gi13PYf4AJKBUdep6a57pEti7wbI30JY
	L8pkTL5uHTyBJyhuSU+Oz1W919SJuJSlY9O5w9cgVokBUv36zpv5WjvdapAvF8lyxUZ/7BxF1hUGq
	Q6tejkey6OTD3qtfBGC+8Wq2qIZK5+dJ9L20ZUWalFwfeKt+kZXzfklL0tkJG2gaU39kzDbdXiy8X
	vpaquP3pJlJKwkc7gulIvIOy1D6s4sYFkoIkWPCsmTYf7+ED8bQqxSecyfdSX2O6V70quEGgXxvnY
	lbO2uaRNYGBsbXulQhGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iktYg-0005hs-2M; Fri, 27 Dec 2019 17:37:54 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iktYb-0005fr-UN; Fri, 27 Dec 2019 17:37:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id z3so26685061wru.3;
 Fri, 27 Dec 2019 09:37:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgL35F0PbHIPU/xEH/yy9QoMVLs1tW/HJnhHgsc5otw=;
 b=IzRk5AUha85e7ZBCIOmBml/0x7GVSoZe86A4RuekbCtKw9koHk96jYDQzvksMlroIw
 QPo76Lk1FreaiJs+nJlxY+DGPDuAY+IqoHZrnEab+FZNodNyyzGPZuhhZGqNA0ygRsSn
 OvxTJQgLvEO58F9eoYgth4dX9kL9tvBf8pkR4nNOy4ygfr+6ypFaOskRNfV+HjgNjTP9
 SRXFGXA4FjuXIRfJOWUn34EHQSluO7zRj5sm7nGRHcDIecXkNdVEpdLeGYmaKErg5yfQ
 /IVeaOYZu4c7oWdEMsF8yE3bTmR5fv4KWbFol8SVD2OByfCJyKRmC/iD7pBQB5Vr/sho
 9vDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=CgL35F0PbHIPU/xEH/yy9QoMVLs1tW/HJnhHgsc5otw=;
 b=oCWC7X0cd8umoRZWhlEbyVSVdbgrz1WHoyeqUNWIzuzYV8H6EBLSbfHGFMjnHqChzb
 26AW/0+iwVMUPoUM8lXsVQ/JvL4a0DF43pAXJda7V20dZgVrUPiJT4vcRLjSoBZ9yGzm
 yuD5rUzE7yGiOVz+xOeTVdYCwKPxZ7gLREElAtvTTvMTH/sVgwAEinE7XmyveKTbcYDg
 1hxtIy57fUKohG+s1U6SjGK2bakFdsSwptyDQtEgu37QKUffmrauBnswgQBEoyYO1cJT
 7P4nLSKGQFW3/aqGI/a0DBswko0laRVhcm7pQC8raVOd0Z8dQlW5g28vMZeuReFs7/7l
 695A==
X-Gm-Message-State: APjAAAUaeyGjMJmemEs9xMciLHic+LNXcsoQYBTad7/vUDNKoCwv/vNA
 psUF/lnzkjk2VOTl9i8UOzc=
X-Google-Smtp-Source: APXvYqy2UYkwMWU2dPVz7z8FO3EUeuKP2Q67lEtRTqjhCkPr42la3j1A1wB8F6mXKYw58lhzPxwabg==
X-Received: by 2002:adf:cf0a:: with SMTP id o10mr41875477wrj.325.1577468265643; 
 Fri, 27 Dec 2019 09:37:45 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id f1sm35001776wru.6.2019.12.27.09.37.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Dec 2019 09:37:45 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: yuq825@gmail.com,
	dri-devel@lists.freedesktop.org
Subject: [RFC v2 0/1] drm: lima: devfreq and cooling device support
Date: Fri, 27 Dec 2019 18:37:06 +0100
Message-Id: <20191227173707.20413-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191227_093750_007123_F4FE0076 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

I am seeking comments in two general areas:
- regarding the integration into the existing lima code
- for the actual devfreq code (I had to adapt the panfrost code
  slightly, because lima uses a bus and a GPU/core clock)

My own TODO list includes "more" testing on various Amlogic SoCs.
So far I have tested this on Meson8b and Meson8m2 (which both have a
GPU OPP table defined). However, I still need to test this on a GXL
board (which is currently missing the GPU OPP table).

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


Martin Blumenstingl (1):
  drm/lima: Add optional devfreq support

 drivers/gpu/drm/lima/Kconfig        |   1 +
 drivers/gpu/drm/lima/Makefile       |   3 +-
 drivers/gpu/drm/lima/lima_devfreq.c | 183 ++++++++++++++++++++++++++++
 drivers/gpu/drm/lima/lima_devfreq.h |  15 +++
 drivers/gpu/drm/lima/lima_device.c  |   4 +
 drivers/gpu/drm/lima/lima_device.h  |  17 +++
 drivers/gpu/drm/lima/lima_drv.c     |  14 ++-
 drivers/gpu/drm/lima/lima_sched.c   |   7 ++
 drivers/gpu/drm/lima/lima_sched.h   |   3 +
 9 files changed, 244 insertions(+), 3 deletions(-)
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.c
 create mode 100644 drivers/gpu/drm/lima/lima_devfreq.h

-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
