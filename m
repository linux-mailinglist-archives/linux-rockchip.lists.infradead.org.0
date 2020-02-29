Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B2817479E
	for <lists+linux-rockchip@lfdr.de>; Sat, 29 Feb 2020 16:15:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=59IdnLkY+DtNoL70UY6XEKkX1qTGbf+RWQskR5xF4iQ=; b=ObNmO8DcnjYFf+
	1L5dekLzeLb3fEpYNyLZa9U71mxppj5I6G+jg+uS2LdS6MZxTDrnKo4fBCKlcxYQOTQXKY/NxqtQA
	e7pwdkL+WqUqXxHdKGuA598Cw7dRnRdsoa3S3zOId3KXi1/MiIJzmVz/SGxQQX7u/pnfGc04HBF3F
	xTTsBNPWMlrrcooo6KMf6EQretZaSfDKFJTuCKMPPyhu4E/OhCxZLkNt/3amWzNmPWPt0u6lPGhpP
	yITxTULpZkAGJ/DCxUSXEfKuofm6JY5WIv78ideYh8GHn6wDcN6bxnPA5Nt967kBThSNLacdzUUsd
	qXKyT4h6sHXZfaexTszA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j83py-0006d4-Nh; Sat, 29 Feb 2020 15:15:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j83pv-0006c4-K0
 for linux-rockchip@lists.infradead.org; Sat, 29 Feb 2020 15:15:29 +0000
Received: from p508fcd9d.dip0.t-ipconnect.de ([80.143.205.157]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1j83po-0003GL-9N; Sat, 29 Feb 2020 16:15:20 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 1/3] dt-bindings: Add vendor prefix for Elida
Date: Sat, 29 Feb 2020 16:15:04 +0100
Message-Id: <20200229151506.750242-1-heiko@sntech.de>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_071527_805199_4BD23618 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 francescolavra.fl@gmail.com, robin.murphy@arm.com, robh+dt@kernel.org,
 linux-rockchip@lists.infradead.org, thierry.reding@gmail.com,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>, sam@ravnborg.org,
 christoph.muellner@theobroma-systems.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>

Shenzen Elida Technology Co. Ltd. is a Chinese TFT manufacturer.

Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
Hi Rob,

as can be seen on [0], Sam expects you to apply the vendor prefix
to the main dt-tree.

Thanks
Heiko

[0] http://lore.kernel.org/r/20200229125725.GC5447@ravnborg.org

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9e67944bec9c..38d3149d3adc 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -285,6 +285,8 @@ patternProperties:
     description: Elan Microelectronic Corp.
   "^elgin,.*":
     description: Elgin S/A.
+  "^elida,.*":
+    description: Shenzhen Elida Technology Co., Ltd.
   "^embest,.*":
     description: Shenzhen Embest Technology Co., Ltd.
   "^emlid,.*":
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
