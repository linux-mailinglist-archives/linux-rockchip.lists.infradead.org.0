Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E55131A34
	for <lists+linux-rockchip@lfdr.de>; Mon,  6 Jan 2020 22:17:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1rfOSC+gJJIEra0TsdXpq9K57sr1r+9e5Cmbm5WiLWY=; b=uuyH5bPCMzaLjY
	7KWNYDyIF6gII+boFXlKZ/3C0deEoootbGmW5PEn5SRK4NeZjirPbJwq6t7EEpsdxUDcqEoAo9j7Q
	tze2zMnJgcIvyqnrDbGIl/cvrrbliV5pClBxAJgFcGvoyN7/F8ZCs+BAdd1XuNuwaJbe+YAY+QrRE
	ZEXsxQFFUmf4bcLrEbw/cfEUcRYaGnMtXjTAtJLmV59x5h24+emUBCARnENGOQV32O3arvNOBL08d
	klCxGOmLDN4A551od4x26H+V4kHnIGSjQj0LWpid0xST8eFn3PZ8xkAyZxirefcFcw7S03wMbNNS0
	P0pzLnpaWOYqfPrdLQkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioZky-0008BY-Pj; Mon, 06 Jan 2020 21:17:48 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZkN-0007Xs-5k; Mon, 06 Jan 2020 21:17:12 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1ioZkL-0001VB-HL; Mon, 06 Jan 2020 22:17:09 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from roc-pc (pD9E89450.dip0.t-ipconnect.de [217.232.148.80])
 (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 006LH84B032145
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 6 Jan 2020 22:17:08 +0100
From: Markus Reichl <m.reichl@fivetechno.de>
To: linux-rockchip@lists.infradead.org, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 3/5] dt-bindings: add vendor Monolithic Power Systems
Date: Mon,  6 Jan 2020 22:16:26 +0100
Message-Id: <20200106211633.2882-4-m.reichl@fivetechno.de>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106211633.2882-1-m.reichl@fivetechno.de>
References: <20200106211633.2882-1-m.reichl@fivetechno.de>
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1578345431;
 c4c85a48; 
X-HE-SMSGID: 1ioZkL-0001VB-HL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_131711_452674_1977F824 
X-CRM114-Status: UNSURE (   7.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Markus Reichl <m.reichl@fivetechno.de>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

MPS produce power regulators like the MP8859.

Signed-off-by: Markus Reichl <m.reichl@fivetechno.de>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index fa6aa3c5a500..4fa3bb494745 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -617,6 +617,8 @@ patternProperties:
     description: Moxa Inc.
   "^mpl,.*":
     description: MPL AG
+  "^mps,.*":
+    description: Monolithic Power Systems Inc.
   "^mqmaker,.*":
     description: mqmaker Inc.
   "^mscc,.*":
-- 
2.24.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
