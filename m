Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 721161F1EDE
	for <lists+linux-rockchip@lfdr.de>; Mon,  8 Jun 2020 20:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=shSgkJgZVF7Ts1e3WemiHQlruKodg9GxHkuyZrWg8Ew=; b=oMVqMd7w7UA8NI
	Rg529whc99FTy/oaNn+z6V2iVQYQ91rt9QxzAYhZ6HVokNdInPNJJJMd605ax3TFI2lcuyoO9J4HB
	3oRimHrPj9S1eJPZAwylLKC/xT4G3s+4XcW42HpcHT6253NmvmTTUVSoc3okaRfMDGCUDXCUvlDby
	CRazTs+yWqVxo5Pja6eDptQVr/ljuTXHLQqq9XZO/cFADRsKcEh/Xp5UdrJYNE6ETG8OvM6Ni8VA8
	Pvdq0gDnKajj2xJ1sO5rjXzk97C9VSVXadx2ZMAAdrhJYIYsnnwh9akRPxbWu8LAl9F/dwVQ3x5y4
	B14TYNiFSIZggjLFb/qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiMLA-0002oN-Tq; Mon, 08 Jun 2020 18:17:44 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiML7-0002mf-69
 for linux-rockchip@lists.infradead.org; Mon, 08 Jun 2020 18:17:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id x11so6969353plv.9
 for <linux-rockchip@lists.infradead.org>; Mon, 08 Jun 2020 11:17:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6LipOeR35UNlq6/T17OBC7BQS9hPC5+ORvdL4ZZQyaY=;
 b=qKYhoLFyT/K2RM2w4wDSHkWpSOnIBzgRmtYfk9jX+qPIXTBjbLPm/rEQWzw4PyRejG
 dTEKzvurJDANqVTC4nlVMXW50jZs+OOpM//ERy8oFng9Wihj2lOzbb4uFAc6MzUN8pSN
 9QbStnu4jeYRCLVx1nvA5cPB8pQowa8VaI2sg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6LipOeR35UNlq6/T17OBC7BQS9hPC5+ORvdL4ZZQyaY=;
 b=by+1eIPLOKc6nqbF1zRaj+/q/nj3fCRoFzEr8J75J12/dpM6p1jTeJEFNrObOSyOPB
 bve3fFu0g88gZfXBlqdT+NrZuwkVOtR4EeBR504777YSi/wgwTzxe+C5hLEoUK+krosd
 Q8IGDy29w5wqtlk+kkzcXvs1xosU3Oq/ehkJoVoKG1jfd0rV1H2Qo6fm7O5qnvSXIak7
 VuIGcaiNGCg93mcAornW5nP6FZt0ahO7Z984BAsxYLxt13e5qmDGRmloySK0KK2h3rGO
 EZZ1YytMnB8xzjvDzvyFWbE69lOZDKfHxC5yFrbBDMjwB+FxD1Z4qge35IM1FmnbeTAk
 kQlg==
X-Gm-Message-State: AOAM533FATsRXNVCwxUtNpVH9Exn7Qt39Qs/yTvYbE5NTIzNP5ANcYuZ
 6/FGsFtBTTbS4+OOqPVYNjlVFA==
X-Google-Smtp-Source: ABdhPJyJjvQIqZhDx5ie+WHtNa+bt0dcy618wgBWVtPGZK5/KQrLUdLRp5NYu6z7o17dxAFBnVUHlQ==
X-Received: by 2002:a17:90a:9292:: with SMTP id n18mr537029pjo.3.1591640260445; 
 Mon, 08 Jun 2020 11:17:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9043:af95:b7b4:3ade])
 by smtp.gmail.com with ESMTPSA id t7sm180213pju.42.2020.06.08.11.17.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 08 Jun 2020 11:17:39 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH v4 4/4] doc: rockchip: Document SPI flash program steps
Date: Mon,  8 Jun 2020 14:17:08 -0400
Message-Id: <20200608181708.17842-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200608181708.17842-1-jagan@amarulasolutions.com>
References: <20200608181708.17842-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_111741_227693_1A134C8B 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Document SPI flash program steps for rockchip platforms.

Suggested-by: Hugh Cole-Baker <sigmaris@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
---
Changes for v4:
- none

 doc/board/rockchip/rockchip.rst | 26 +++++++++++++++++++++++++-
 1 file changed, 25 insertions(+), 1 deletion(-)

diff --git a/doc/board/rockchip/rockchip.rst b/doc/board/rockchip/rockchip.rst
index 7b72fab496..76b228a046 100644
--- a/doc/board/rockchip/rockchip.rst
+++ b/doc/board/rockchip/rockchip.rst
@@ -162,6 +162,30 @@ Program the flash::
 Note: for rockchip 32-bit platforms the U-Boot proper image
 is u-boot-dtb.img
 
+SPI
+^^^
+
+Generating idbloader for SPI boot would require to input a multi image
+image format to mkimage tool instead of concerting (like for MMC boot).
+
+SPL-alone SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d spl/u-boot-spl.bin idbloader.img
+
+TPL+SPL SPI boot image::
+
+        ./tools/mkimage -n rk3399 -T rkspi -d tpl/u-boot-tpl.bin:spl/u-boot-spl.bin idbloader.img
+
+Copy SPI boot images into SD card and boot from SD::
+
+        sf probe
+        load mmc 1:1 $kernel_addr_r idbloader.img
+        sf erase 0 +$filesize
+        sf write $kernel_addr_r 0 ${filesize}
+        load mmc 1:1 ${kernel_addr_r} u-boot.itb
+        sf erase 0x60000 +$filesize
+        sf write $kernel_addr_r 0x60000 ${filesize}
+
 TODO
 ----
 
@@ -171,4 +195,4 @@ TODO
 - Add missing SoC's with it boards list
 
 .. Jagan Teki <jagan@amarulasolutions.com>
-.. Sunday 24 May 2020 10:08:41 PM IST
+.. Tuesday 02 June 2020 12:18:57 AM IST
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
