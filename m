Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C0C41E0129
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 19:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpRJ+9AzHFATRffQidIuTDubLGhc71nG/+IIgbofjCY=; b=LQf7o4mJgzsYRY
	0Fl4LJEfMyWXI8dqJjF1lh5vcwug+Df1sdKuYbqtHSjYtQG6P+vly3NmdyFqHBZUTmxeYsgQk1YtN
	MM5WcR3q2rxu/AtgMQsIec7EBaBvrnksoT7flr1NqL/BZOb+F4DSNpdC1e6iMlzEW2Mj2MQm1TkAN
	HXJSXX1NDvi2c94KZTzvNBRNzusj84o+JQIYDyJJslGMtYWkRKlzWOk3heDxDxbOJvPYYhL9Le/nj
	nyin+1OtE+FJHgw5o1OLEr57V6OqlC0d7PIuBj6IMJpzll+h6f893DhHsYlx9/GMq6FB4miu7eNRk
	xMj4ADzZORmP4NzYkVaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuV9-0004ox-QP; Sun, 24 May 2020 17:33:31 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuV5-0004oD-Iy
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 17:33:29 +0000
Received: by mail-pj1-x1044.google.com with SMTP id q24so7585960pjd.1
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 10:33:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lD59mt+Urc8oNiqOxLeBOVU51+Fn4Lh/7rB6OWjHyyA=;
 b=f2EAXMoZnpnSxHR4tv9vsp5zYnDlOkG7qQK9KJ6+rd3G5VQ84XOoBBc20xu8gEUmUb
 SOM59NJI03qWhiTemh2/+e1t/rotbwdTastiAsB93IaVZcAZhIBQxt0hYIhjHS5Lmjro
 ouJaMZBcZh50RULuPVFyXFKJ1Yishsdpc6LN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lD59mt+Urc8oNiqOxLeBOVU51+Fn4Lh/7rB6OWjHyyA=;
 b=hXzRGzXwbfNLtqKAGTnZf5bhaYRMyXuoc9jpnly5fvsNSg8O9/I6sfvNZHP/1JHGMq
 kNxXKKGRnTWoHCFcqZORR0/zCiEN3fQp434NlgtMd/fXZv7Opw9qEK+b/gKP4jIMo3DL
 QMGljLEGu35YgC4YTvUG+/0QRyAl5xpiV35iisd7EEUO0pCR5/uHBPX2iOYHLJKEVek5
 a1dqs2xhiL9Ba0wIn/bFLkluUX4cGTLT5YsjPpJHq0r2ng/KUJ9by+lI8YbU7G/nD4Bf
 pMBbHFR+/bm5TMRyEnRqsjq7QbnBSMQ6UNryH9bmdfO1/2AFJWcHvQtK5EtoP1WaSbnt
 l/gg==
X-Gm-Message-State: AOAM5335yP6UctUCd9xOOzFKPo4I8fbvo2N3GY4cW/MiET4gatjTTOrC
 rZmcMy/JXioHcpeGgXvO1EhMwA==
X-Google-Smtp-Source: ABdhPJznzwkVPko459FVcXtWhIgU7ZupfbV2A/I25NikiiKU9SQvUJtM6WlBR3fRlN9k4wCx7+BQZQ==
X-Received: by 2002:a17:902:ab8b:: with SMTP id
 f11mr25341765plr.145.1590341606762; 
 Sun, 24 May 2020 10:33:26 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 y85sm10617271pfc.24.2020.05.24.10.33.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 10:33:26 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 3/3] doc: rockchip: Document eMMC program steps
Date: Sun, 24 May 2020 23:02:13 +0530
Message-Id: <20200524173213.201123-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200524173213.201123-1-jagan@amarulasolutions.com>
References: <20200524173213.201123-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_103327_628760_3DB9B79E 
X-CRM114-Status: UNSURE (   9.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Document eMMC partition creation and program steps for
rockchip platforms.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 doc/board/rockchip/rockchip.rst | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index cd9c8d6dc4..1faa675aa8 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -117,14 +117,42 @@ To write an image that boots from an SD card (assumed to be /dev/sda)::
         sudo dd if=u-boot-rockchip.bin of=/dev/sda seek=64
         sync
 
+eMMC
+^^^^
+
+eMMC flash would probe on mmc0 in most of the rockchip platforms.
+
+Create GPT partition layout as defined in configurations::
+
+        mmc dev 0
+        gpt write mmc 0 $partitions
+
+Connect the USB-OTG cable between host and target device.
+
+Launch fastboot at target::
+
+        fastboot 0
+
+Upon successful gadget connection,host show the USB device like::
+
+        lsusb
+        Bus 001 Device 020: ID 2207:330c Fuzhou Rockchip Electronics Company RK3399 in Mask ROM mode
+
+Program the flash::
+
+        sudo fastboot -i 0x2207 flash loader1 idbloader.img
+        sudo fastboot -i 0x2207 flash loader2 u-boot.itb
+
+Note: for rockchip 32-bit platforms the U-Boot proper image
+is u-boot-dtb.img
+
 TODO
 ----
 
 - Add rockchip idbloader image building
 - Add rockchip TPL image building
 - Document SPI flash boot
-- Describe steps for eMMC flashing
 - Add missing SoC's with it boards list
 
 .. Jagan Teki <jagan@amarulasolutions.com>
-.. Fri Jan 10 00:08:40 IST 2020
+.. Sunday 24 May 2020 10:08:41 PM IST
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
