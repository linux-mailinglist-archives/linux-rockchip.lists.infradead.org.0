Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30F5347B10
	for <lists+linux-rockchip@lfdr.de>; Mon, 17 Jun 2019 09:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u2QGYt1Cipr0dWD1IKUdSbmUN8MW6hVkS+pY1sVPqL8=; b=j4nXyoq5MoNu0j
	+YpVHh28iyBwlVv/K1NL2IIYzucQ2zOKYlWKAO739p0npZb2zaQmP2m8Q2nHDRI93flShNw0Ps3pg
	Rr5sruzDPkKBYR5wZ21uvRU1KRyzw0JmdM305IPsRQ/wdPx74mFFrR6F/ciU0Z67VYpLrJOviXpVQ
	5UEZbKTUDP7qj4PFRqj+p3D6hES12ho8AJkUEhxI6DG98VCrzk+t/zbUbxcQZgRH9+LN4cAszZ7hP
	Uxr8l3/vuPn2D+FbLGUHeEms+xZuXlluFUcuya/Oj3ZoXPhBYFOH9xdNlG1dDdJAYpR+PWneI6IJs
	SXdF1VKOn8HkFsf54RZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmC5-0005Fy-9I; Mon, 17 Jun 2019 07:36:45 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmC1-0005Dt-7M
 for linux-rockchip@lists.infradead.org; Mon, 17 Jun 2019 07:36:42 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so5194236pfa.4
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Jun 2019 00:36:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PUjNJJ1zrQHl6Q9MNnhpTA4dxY9yjHwd6Egj48xreL4=;
 b=nDkjbEJ4e5f+fWbZR39qVExBYzAv8wojoyWAajtnMm4OcnhiaWUktpzEIrt1xVZkUC
 3u7KX8rLOWggPWZCte0XJnPdlVK8gLIefs+8txmVdnor7wtCAc2Nj+Gv5bDH4okBTggO
 I6Q/xQbaAy/YLV25jc5jfKHE7iiU/Z0ro2ye8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PUjNJJ1zrQHl6Q9MNnhpTA4dxY9yjHwd6Egj48xreL4=;
 b=ELsyc7uHEjOgWEtj2lm9oMJ+Txoxsad5T/axrcae7QmhqQsxgQtKFh7ChTHRYHCq0e
 U4gVwWWCMMUhNr32QrAWExmbjmPkSw1NcZ6O9VVud64PZ1V+OmStztKljMsg7Emrdt6d
 5qsDnRGcMf0+2VoFlBBFOoU/tKvHJKKf2PuHLyUTf5ddaPrPZ9i53xaWHD4uSz8Wok78
 7Tx3yiG4KYxih1A/C4pGs8faEnF0vFtmIZd5xmJN0oC1Oe9WazbQjVuFS/I4Omug1VHQ
 cadeQr2m4wqK6iU5rKat5AGYD/tjWe4OX5CsaCZBUxsVuvGXWhKIXIeHqPugvsD69dZZ
 oz3Q==
X-Gm-Message-State: APjAAAXjfxZhBaKFPB23wATlYWpcrQFkgS6FXJCPP9qusKMAAY2MSCxu
 bptEMV02KF7j/sUK5rW8Kewv5w==
X-Google-Smtp-Source: APXvYqyfuTdgQBR1ATWcslN/ZIuFz+rsHz/u+NwMafYZg272agAYzVC/NizofKxWU487tKvgHGy/hA==
X-Received: by 2002:a63:2147:: with SMTP id s7mr42056031pgm.283.1560757000502; 
 Mon, 17 Jun 2019 00:36:40 -0700 (PDT)
Received: from localhost.localdomain ([49.206.203.245])
 by smtp.gmail.com with ESMTPSA id m41sm15205998pje.18.2019.06.17.00.36.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 00:36:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v2 06/99] ram: rk3399: Order include files
Date: Mon, 17 Jun 2019 13:01:19 +0530
Message-Id: <20190617073252.27810-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190617073252.27810-1-jagan@amarulasolutions.com>
References: <20190617073252.27810-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_003641_278076_1DBD2EF2 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Order include files in ascending order, which would
avoid conflicting function definitions/prototypes if
any and also for better code readability.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/ram/rockchip/sdram_rk3399.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/ram/rockchip/sdram_rk3399.c b/drivers/ram/rockchip/sdram_rk3399.c
index e10bcafe32..e6f52c9f59 100644
--- a/drivers/ram/rockchip/sdram_rk3399.c
+++ b/drivers/ram/rockchip/sdram_rk3399.c
@@ -14,11 +14,11 @@
 #include <syscon.h>
 #include <asm/io.h>
 #include <asm/arch-rockchip/clock.h>
-#include <asm/arch-rockchip/sdram_common.h>
-#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <asm/arch-rockchip/cru_rk3399.h>
 #include <asm/arch-rockchip/grf_rk3399.h>
 #include <asm/arch-rockchip/hardware.h>
+#include <asm/arch-rockchip/sdram_common.h>
+#include <asm/arch-rockchip/sdram_rk3399.h>
 #include <linux/err.h>
 #include <time.h>
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
