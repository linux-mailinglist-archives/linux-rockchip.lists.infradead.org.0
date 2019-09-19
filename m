Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A832CB72AD
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 07:30:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGZ8TR0j3F4gu+TPmaP1Gv+kPxylPIJ2dGlnbxUsWBs=; b=LpMcFcIdY6wH8U
	TCkgdtmSm2ifpUG6AVS9k7gpfPf3QGlcOycIDLhagLTldm7bx0z3lrA6p3km6ZrBoxeR5rJ6XacGv
	9DStcFOOX1Bfc9yvoNDQz/M2mQdip53RsdPoJeKCKJi11WfVtDQr+Q9q5aj6cT+fLMfhwDub62V5o
	acS/BurQKarmESM64Bh44kt94qkDkoolIdv59Wawin03aIw3h3p7fMTTPOnmlpjKOmrFBoomPGng4
	8gHcrPFhLXKU2TzpeNGRPNOZgDiU/j38ewna9LPw4QCkcsL6TcwPCGuU1vv3zVXfkys4Vnr+PnYDL
	flljvr9F+OEicacmS6Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAp18-0006Yi-7P; Thu, 19 Sep 2019 05:30:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAp01-0005Bi-5g
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 05:29:02 +0000
Received: by mail-pf1-x444.google.com with SMTP id q10so1526990pfl.0
 for <linux-rockchip@lists.infradead.org>; Wed, 18 Sep 2019 22:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pjzjQZaNXsKJUrobfVyNEoaPXPZ7j/Y7jZihfDcfLTc=;
 b=ma2szWh3fZ0CthnlLq01YhUIhLic/fGiuCo9bW1ntc7zj8RhLiStft18NL8DLCIKhD
 xol1qetrlBNmmOldxCqP5M1RBVdgatiqw+pXn6vDzbf9GnHsMTuvjPKDbxRhYt7WVTXo
 yU1N7/WQtkp69Zn2xKy4/PwlAlrecXGJsszkc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pjzjQZaNXsKJUrobfVyNEoaPXPZ7j/Y7jZihfDcfLTc=;
 b=i5r5KgjBFXhq5V1+7rfOlVN0lQZ55I2oyiubx5V3dPgqqSi5rOvyJvspl0BtjzK5aV
 Qyn4xoXEHyVyq21d02RN8HUIPnnKc1bku/04txCayb3XpjBYfeUmoln+uBZIn6Kv6jX2
 vJVytXWc4ZHaooT/u4QoEUVVzHw51UhcL22PjubTCrb20L7mlYrB5Z34WUU9rTDNm8J1
 H+PIGNLBdq87oKmnPp2UqKb5i01rR+2EpuFL+rG87kNmQN5JbPyMc3cl+MuISLVBKYj9
 YyTA/zKn79/5FKbAXWDRw5KrLfq0fF2ep/IAaPV0sG6w/Z0KDqGxBiB1Xq5ByUAxvaZ1
 gYBw==
X-Gm-Message-State: APjAAAWy4lpoNdCyHlLesCggbl5Wy7Mmj4S4AbCllmSOpfa0cRtQ73Ev
 9dKlJitYgxKsPFi3L6aMSRX2Cw==
X-Google-Smtp-Source: APXvYqwMn2793F7u+gsqgIZ7WKzwlSoslHkIYECsncXAbvmDGov1nn2gfmltxgWM2us7xFP2Cmf6JA==
X-Received: by 2002:a63:1c22:: with SMTP id c34mr7195695pgc.435.1568870940513; 
 Wed, 18 Sep 2019 22:29:00 -0700 (PDT)
Received: from localhost.localdomain ([49.206.200.127])
 by smtp.gmail.com with ESMTPSA id z20sm5051930pjn.12.2019.09.18.22.28.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 18 Sep 2019 22:29:00 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Levin Du <djw@t-chip.com.cn>,
 Akash Gajjar <akash@openedev.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 4/6] arm64: dts: rockchip: Rename roc-pc with libretech
 notation
Date: Thu, 19 Sep 2019 10:58:20 +0530
Message-Id: <20190919052822.10403-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190919052822.10403-1-jagan@amarulasolutions.com>
References: <20190919052822.10403-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_222901_322074_E519A3C2 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Jagan Teki <jagan@amarulasolutions.com>,
 Da Xue <da@lessconfused.com>, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Though the ROC-PC is manufactured by firefly, it is co-designed
by libretch like other Libretech computer boards from allwinner,
amlogic does.

So, it is always meaningful to keep maintain those vendors who
are part of design participation so-that the linux mainline
code will expose outside world who are the makers of such
hardware prototypes.

So, rename the existing rk3399-roc-pc.dts with libretch notation,
rk3399-libretech-roc-rk3399-pc.dts

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/Makefile                           | 2 +-
 .../{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts}   | 0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename arch/arm64/boot/dts/rockchip/{rk3399-roc-pc.dts => rk3399-libretech-roc-rk3399-pc.dts} (100%)

diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
index 1f18a9392d15..73c10ddb4300 100644
--- a/arch/arm64/boot/dts/rockchip/Makefile
+++ b/arch/arm64/boot/dts/rockchip/Makefile
@@ -21,12 +21,12 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-captain.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-khadas-edge-v.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-leez-p710.dtb
+dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-libretech-roc-rk3399-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopc-t4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-m4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-nanopi-neo4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-orangepi.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-puma-haikou.dtb
-dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
 dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts b/arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
similarity index 100%
rename from arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dts
rename to arch/arm64/boot/dts/rockchip/rk3399-libretech-roc-rk3399-pc.dts
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
