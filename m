Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8633020DE2
	for <lists+linux-rockchip@lfdr.de>; Thu, 16 May 2019 19:25:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dVSRV8y+FamvSpcrUBT+eGs9w6OPTAu/iBjx1B3FNX0=; b=ExIgNz4Ir86zZw
	7x5YHTJVbS06C4tqkqhTU+qhimsgjlc+wfKFAt2R302Lv6uIWyGxJGbRNzsLTBUnww471NyrP2Ipb
	uBW96zl6zGoLBgkET7cyDjx7RLUnpf4C5HfG+C6Uy5EDsYd1Hyu3NthBNPFNaCzs+/Rv+ggy2yiz7
	IHPRtLxnK3yKs3nPy2ymYX7Vdbo7uyBV4FviY5Nbeg3+/tSbiV0/4McAGSZ0fWT8QyxefBQ5eJ+B7
	7nu2FGD4C8hb8OjVmP9OFBrHLnjyD6m7Goh1Pd8k07YWNf0Op+CErLB+/fLgP/U4oKF5dU0lL+D2k
	dj6ygbrcVoqTeP9pTwhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRK86-0002a0-QC; Thu, 16 May 2019 17:25:18 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRK83-0002Yd-Pt
 for linux-rockchip@lists.infradead.org; Thu, 16 May 2019 17:25:17 +0000
Received: by mail-pg1-x541.google.com with SMTP id t187so1868952pgb.13
 for <linux-rockchip@lists.infradead.org>; Thu, 16 May 2019 10:25:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EVl8ZXN8JPcw2xaHO9ZTYh60UwjcOeEd2LUYV6FNZrQ=;
 b=L3pOoCaQskb2Fga/dNWke/VSFUUQxbe+nfTUcxUrOmVHH+LzrUUfkyRywEz99Q4nL2
 m2F69hUS3UQsU1/UYxwbVPnwDiHlZv7R4hJ4RU5sRHW+Kb3kXCOs/SWFZz57Bb7K9hiQ
 cvV1dfJXk2iCJVks9ckJo5aM/Ys5drogaQYgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=EVl8ZXN8JPcw2xaHO9ZTYh60UwjcOeEd2LUYV6FNZrQ=;
 b=ETTMHtSY3emNKUJxRhHa6Avjgaksq1NWJPrIe64Cj9ikL922otPY1ABUyrkZYGjzYd
 1E5MGrNfwgNEHYLhUzrAj/ZO6mpWlj6yX++zhV4p2kAIfmIL6JgryLV1uAmdKk6ye1UK
 YfArjWCX1iaVEIR8792o88WF+Jw3IkPaz/DqYSBsHUYHJdEcUH/DRZm2qBOonyitzeGJ
 fRLB2iWXSIjT88218sPagPljWrbjZKYSoe2Zicg1U4Bwnyqy75HJUEqQCWy3kL3jj/u4
 tgLUQf6asGqkUm/Ha8PN4d9RmdppXjNZwO3pa1Aok3/8JsjMbliCSVAl1WogTqsyXXrM
 bdlg==
X-Gm-Message-State: APjAAAXI82kR+w7rjZhnwxfsdJMCEtA2ygyQ/E+EoLVlByhsJrFaGdDO
 HrrT/P/v83Gr94f3ueTewyp+qQ==
X-Google-Smtp-Source: APXvYqwpj3INjdyCcYF7eLRtYgUqjMn2YOU0j2bY43pkolET6jRmQIrQb00jKgHVpRrRAInlDPe5xQ==
X-Received: by 2002:aa7:9afc:: with SMTP id y28mr55797961pfp.101.1558027515393; 
 Thu, 16 May 2019 10:25:15 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id k63sm9651260pfb.108.2019.05.16.10.25.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 10:25:14 -0700 (PDT)
From: Matthias Kaehlcke <mka@chromium.org>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] dt-bindings: gpu: add #cooling-cells property to the
 ARM Mali Midgard GPU binding
Date: Thu, 16 May 2019 10:25:08 -0700
Message-Id: <20190516172510.181473-1-mka@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_102515_869357_B2460CD0 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.21
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
Cc: devicetree@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

The GPU can be used as a thermal cooling device, add an optional
'#cooling-cells' property.

Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
---
Changes in v2:
- patch added to the series
---
 Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
index 18a2cde2e5f3..61fd41a20f99 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-midgard.txt
@@ -37,6 +37,8 @@ Optional properties:
 - operating-points-v2 : Refer to Documentation/devicetree/bindings/opp/opp.txt
   for details.
 
+- #cooling-cells: Refer to Documentation/devicetree/bindings/thermal/thermal.txt
+  for details.
 
 Example for a Mali-T760:
 
@@ -51,6 +53,7 @@ gpu@ffa30000 {
 	mali-supply = <&vdd_gpu>;
 	operating-points-v2 = <&gpu_opp_table>;
 	power-domains = <&power RK3288_PD_GPU>;
+	#cooling-cells = <2>;
 };
 
 gpu_opp_table: opp_table0 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
