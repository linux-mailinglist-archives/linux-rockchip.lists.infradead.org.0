Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF31DB6D8
	for <lists+linux-rockchip@lfdr.de>; Thu, 17 Oct 2019 21:08:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ia2/SNrYgU0F5L9IF85GJyTW3OJdghQIzWhBtNfIFo=; b=cgNORMXS0u0zWS
	3LF6rWHx+6pV87BhR6i5KHszjFZ7uHDnSwTA26Jjd5NQQlrqrkcVXW56nnBsWnkikMLjxLFfshKRZ
	FGruuS+1kEJ+e2Q7Fa3QGrCwaUSMbqd29Ia10ueIEVFDiC27x8+laKIWLZgeFRTs7d39u2meamJze
	7EJlchTQSFidBf9p4GP1RfWLVScscx3jf4nofMeLV9ydEEjZLMrsSoDr1XZqhvcYeWL/sY+CU+y2c
	oT2Ikdf2rwz9qnn7RkcXCcJDOAJssprIl4gD4zxSdHdHdIRzAYtz2D7hFadHJu0EtltfDpxikuXzR
	BIzeVUoQyq8X2aaUcf1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLB7u-0001BV-PJ; Thu, 17 Oct 2019 19:07:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLB7r-00019d-IS
 for linux-rockchip@lists.infradead.org; Thu, 17 Oct 2019 19:07:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id p30so1902321pgl.2
 for <linux-rockchip@lists.infradead.org>; Thu, 17 Oct 2019 12:07:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Dt2abGEwZm6aJCbceP+4oam9g7aHcxE+ciGv4qjQOp0=;
 b=YX+hkK68hzDGrZuA1dkTVjAeml1iCe6N1XxaW3KO03oZrKWxE61UK/t863LUC8A5g7
 3OIfD0MvBYK3z14Enfu6S0G3VVCrHfd5kxjk2RcDJiDwyM4vXPb4EPoITh3ugpVwj5w7
 Ll5BJgB5U5dIdH2Zfs88Epevb7XSCWbMud034=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Dt2abGEwZm6aJCbceP+4oam9g7aHcxE+ciGv4qjQOp0=;
 b=lOn5kR3WKCcvifwpmv8IMNwVpCS5pp1lD4tzmkc5AKrG8Q8PXD/9M5YilWtiR2HSas
 Pp+qOiUs3wcfScurdKS6nVN/x0vkQmml0Ef89LCRSg3Yomh3nIgBEnd89McO1MQH8Suk
 B5xFlKY39VJA8oyDx7b/BW/xLA0cFp9tF+/q6wnGXY1zwLuLknk3zknVlNGELHlD6RCk
 /+vaGcFb99JRqAhNEhW0eCg/QFAOfRZroNeNXKixrbE5XhBr+dpFjXo125vSVlQwrxUx
 x8VvJJ/jyBMoA2ZCsZklyzSXRIyluMgK9SVFipesXiHDRRteDd8r4QY4KvZSsQUWebmT
 0kKA==
X-Gm-Message-State: APjAAAWw6V6AQ0mwx1kDtsec5U6Q4Imc9YmFYvKF0Ad2NJyMFDY0tUfm
 Usy8pSrFS+y6jVIM+El++PsUJ3dmdyo=
X-Google-Smtp-Source: APXvYqxPsHM+TsSDXw+zcrEHG5a1ddym2mNnHUpytB9L8m7rIy1GRJJwnuhRgU3bHB0JacNAKdqzYA==
X-Received: by 2002:a63:cb4f:: with SMTP id m15mr5963057pgi.325.1571339274506; 
 Thu, 17 Oct 2019 12:07:54 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.31])
 by smtp.gmail.com with ESMTPSA id y28sm4422736pfq.48.2019.10.17.12.07.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 12:07:53 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v3 2/5] Makefile: Rename idbloader.img with
 u-boot-spl-rockchip.bin
Date: Fri, 18 Oct 2019 00:37:07 +0530
Message-Id: <20191017190710.29985-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20191017190710.29985-1-jagan@amarulasolutions.com>
References: <20191017190710.29985-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_120755_609230_DEBFE207 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: u-boot@lists.denx.de, "Matwey V . Kornilov" <matwey.kornilov@gmail.com>,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

idbloader.img name is specific to rockchip, where it usually
created using rockchip tools. Since the image is created as
per U-Boot generic builds like SPL, better to follow the
generic U-Boot naming notation like other SoC's following.

Enable idbloader.img with u-boot-spl-rockchip.bin and create
the same in spl directory since it is SPL file and Makefile.spl
will clean it by default.

Cc: Kever Yang <kever.yang@rock-chips.com>
Cc: Matwey V. Kornilov <matwey.kornilov@gmail.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Makefile b/Makefile
index ec55e0f6a4..918b5d53e0 100644
--- a/Makefile
+++ b/Makefile
@@ -887,7 +887,7 @@ ALL-y += u-boot-with-dtb.bin
 endif
 
 ifeq ($(CONFIG_ARCH_ROCKCHIP)$(CONFIG_SPL)$(CONFIG_TPL),yyy)
-ALL-y += idbloader.img
+ALL-y += spl/u-boot-spl-rockchip.bin
 endif
 
 LDFLAGS_u-boot += $(LDFLAGS_FINAL)
@@ -1344,7 +1344,7 @@ endif
 MKIMAGEFLAGS_u-boot-tpl.img = -n $(CONFIG_SYS_SOC) -T $(ROCKCHIP_IMG_TYPE)
 tpl/u-boot-tpl.img: tpl/u-boot-tpl.bin FORCE
 	$(call if_changed,mkimage)
-idbloader.img: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
+spl/u-boot-spl-rockchip.bin: tpl/u-boot-tpl.img spl/u-boot-spl.bin FORCE
 	$(call if_changed,cat)
 endif
 
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
