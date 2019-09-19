Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CFA2B834B
	for <lists+linux-rockchip@lfdr.de>; Thu, 19 Sep 2019 23:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B01b1+owLmvCucO6iIPAnQP8aGcC6fujILg4on2WPVQ=; b=dsTYPPetr53dFw
	ns5IOn468ph8sb6RHYGyMayhg+4kHIjpHSepSaKrRPZ11dS/ND7NjPCpBnrJbwxaB5upo4VAo+hhg
	EIDqUbb1xdrJ58CsAXKcMMkhyFikP2c5798ZTvccwCehW747gOxnZaRSbrl7kucytXJVfK/ZV2a9+
	3GowfGPoAKuyDlzny1hpFEWtCuVmdRUM8B4LcWoUBFihvpAZVrHm5oYKH9hRaz7qzJAo4mmC3SdZI
	3nIICzCgY9DHfXWRqXZwEEK019uqkx64Rgo2/avzmNS/mLlaSH48V1TBDE4G1XBZxOR38RWj1Q9pJ
	FcC2wYGuMQ60PFaYaWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB3xs-0008DN-7X; Thu, 19 Sep 2019 21:27:48 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB3xc-00080I-Fn
 for linux-rockchip@lists.infradead.org; Thu, 19 Sep 2019 21:27:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id q24so2169218plr.13
 for <linux-rockchip@lists.infradead.org>; Thu, 19 Sep 2019 14:27:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1eFwN6VQoIVgZTWyIrMDT1Z2HKm27mGWj9Z/avCv2WM=;
 b=WLLAVHKMkEqkBrDpAUPZfZ4ytCC0Dlr6FMIuwsZ9AN8V0mNiNaW0jkxD95BnZiHMxi
 qarYueI8ei+IBtKxRMpotJ2s/Mu7DyoZMkUqsJ9CNz7GgdKrLBlOwiDogELObnn2UHpR
 CGFCDa9DSeEbBcsNPanhYfWmTWJjwgz29GAMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1eFwN6VQoIVgZTWyIrMDT1Z2HKm27mGWj9Z/avCv2WM=;
 b=Efy3wBWb6ECeqCC0dbcSojVtGZD4hQ8MCuPRsYoQJ1HBUJmevr3FjfrPLdeU75ILNV
 FYrANEIAdRcXyQYXaslqmtgl9ZtGb2UXubAs09oKMT4b9bmm5Jtj4nF3exM88f/C4jn/
 0QlmgKP1L9jDXOoglAG54tzYUeo4O2BaxJcEevt6d9jABtkhwTqq/NTZCsk+LW2vDboM
 aibHYpvk0XNhJmfjJw90qsMvWzGfVcV+qhhzzijj1L+oaFALT3LDa4f3tLvwnuVMtZfL
 ntEKUpI2lwz04ecwWIDFxSrkCY1EiE5AhW0/b6x/jMpVRWhXTP2cSUgO738YgD1VknxU
 PrhQ==
X-Gm-Message-State: APjAAAXgmhExqoRselNJb3vTQ2frCUA1NVSN0vWjeFaU8j2gJ7hXfK7c
 dh2WXso3xb20FHf/Bbsbi0z0cg==
X-Google-Smtp-Source: APXvYqzUrqDmlhSeuD997w0UB8kD5+ZRkrKOf7RYGruGWm+SZRArLf5CFPjvg0kYdcqo1SOAwcQ1sQ==
X-Received: by 2002:a17:902:b20a:: with SMTP id
 t10mr12318381plr.277.1568928451427; 
 Thu, 19 Sep 2019 14:27:31 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id 197sm28584015pge.39.2019.09.19.14.27.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Sep 2019 14:27:30 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Add cpu id to rk3288 efuse node
Date: Thu, 19 Sep 2019 14:26:41 -0700
Message-Id: <20190919142611.1.I309434f00a2a9be71e4437991fe08abc12f06e2e@changeid>
X-Mailer: git-send-email 2.23.0.351.gc4317032e6-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_142732_555760_75D72100 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 2.0 BODY_QUOTE_MALF_MSGID  Malformed MSGID with quote
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This just adds in another field of what's stored in the e-fuse on
rk3288.  Though I can't personally promise that every rk3288 out there
has the CPU ID stored in the eFuse at this location, there is some
evidence that it is correct:
- This matches what was in the Chrome OS 3.14 branch (see
  EFUSE_CHIP_UID_OFFSET and EFUSE_CHIP_UID_LEN) for rk3288.
- The upstream rk3399 dts file has this same data at the same offset
  and with the same length, indiciating that this is likely common for
  several modern Rockchip SoCs.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index cc893e154fe5..415b48fc3ce8 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1391,6 +1391,9 @@
 		clocks = <&cru PCLK_EFUSE256>;
 		clock-names = "pclk_efuse";
 
+		cpu_id: cpu-id@7 {
+			reg = <0x07 0x10>;
+		};
 		cpu_leakage: cpu_leakage@17 {
 			reg = <0x17 0x1>;
 		};
-- 
2.23.0.351.gc4317032e6-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
