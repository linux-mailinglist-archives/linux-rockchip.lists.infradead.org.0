Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CEBB0121210
	for <lists+linux-rockchip@lfdr.de>; Mon, 16 Dec 2019 18:48:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CLTEv3yLFibh23N+vrSofx6DEfFSAKShvb4e2nUJUmc=; b=hB1UB1cKQwxm2g
	YkYVnHn6HjkTSGdIGxDztwps1ZzQsJWDAvD4g/ldKRnfJ60CU3xuLWHscoVnTID8rpJ63XgRLjc+V
	juUpfHUBtHqVUl2SpJL7rTttUEu3ZITWWC93FjSWvXIYb1fNeEKaH3b0yO3LKKsJiMIs79ze5Y3NQ
	3+yKc2eIN90sBWjkTcLe+HbqZQzDNSTsf6jTlViY932b4VdPYNgN7jCtGr/ukUsVfaVsLbieoAjeE
	oPXwuk8Wi/AqJOjbnRBDWJVXW2NTw2q+DUAgohVpxiiMR7vo0B49cX+6rVwC+5StW+EsujfxKVBGR
	F5+ajqxpQRY6Qlu7slfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iguTM-0003rQ-9a; Mon, 16 Dec 2019 17:47:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iguT7-0003fU-1t
 for linux-rockchip@lists.infradead.org; Mon, 16 Dec 2019 17:47:42 +0000
Received: by mail-pg1-x541.google.com with SMTP id a33so4120052pgm.5
 for <linux-rockchip@lists.infradead.org>; Mon, 16 Dec 2019 09:47:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=23EgKnWEsl0Hd3XbTrDUtuEdXnQvPbAjdUpGkg0hfXw=;
 b=IGnhB3L2ap3ulPumsoKZ4TVu/FXmghrIC8FwJJpv4Dfc3bbyxjUaFsLSYDCUhkyW4p
 +xreDjgbdjUxX7sC1gFq9aTbQ106feVMgzzFTVc8tnhMRI6v14HsQKFIkyuf/GInQA/u
 KccmCNYTo1rTVXvYurh1NY7uS4X8vgOpk+9rw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=23EgKnWEsl0Hd3XbTrDUtuEdXnQvPbAjdUpGkg0hfXw=;
 b=dMtl24XGZ+l7NrArNTXWtyDXZH30NqF9gfEkKOPluRSal5bMsT9NF4++5DFFEZGwV8
 QVvLn6bqNJGKirTsnOkSuc4/0D/0ci11kvUnj0Kr1U2TMdW5nvP+psmMuONzZgBi7tQq
 kBHbEwVzqMK7bDQ5PQfhLbA2cdHGvhopzaKOjC3VPWFYk7cWqJTwJ2FKRrWmVnlY+Rv1
 +2+o0EpdfP6su6feY45bu81uXGhk+qQao7in4K53bnQrfBCZ3YBJUKfmfcpaqd1LZnUM
 OFxh4+v21nuLjkxg83cke3IVaH6AvGNWSXrd/4mv/FM61dW3pLu44HTSW8kAYEUqUTvy
 E4sA==
X-Gm-Message-State: APjAAAVndEv4c/K1QKuMq5Bh1Hs4z1lDJOQhCmn75OR6NPPaD1Jv54E0
 g1tx5BC+eGzsYDRGUSMwaaqtEA==
X-Google-Smtp-Source: APXvYqyImG7BVxbhsOeBlgf/l2MpA9ppdirUWWsjIQfweo+/Xeo7ac2PoYXkrH8FYNr02BUC+wD+oA==
X-Received: by 2002:a63:211f:: with SMTP id h31mr18905268pgh.299.1576518460259; 
 Mon, 16 Dec 2019 09:47:40 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:6d28:a89:f9e1:1506])
 by smtp.gmail.com with ESMTPSA id
 a6sm22342924pgg.25.2019.12.16.09.47.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Dec 2019 09:47:39 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v3 0/4] arm64: dts: rockchip: Add Rock Pi N10 support
Date: Mon, 16 Dec 2019 23:17:07 +0530
Message-Id: <20191216174711.17856-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_094741_238510_6AE8034C 
X-CRM114-Status: UNSURE (   8.05  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Tom Cubie <tom@radxa.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Akash Gajjar <akash@openedev.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org,
 Jagan Teki <jagan@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Unlike, other Rock PI boards from radxa, Rock Pi N10 SBC is based
on SOM + Carrier board combination.

Rock Pi N10 is a Rockchip RK3399Pro based SBC, which has
- VMARC RK3399Pro SOM (as per SMARC standard) from Vamrs.
- Dalang carrier board from Radxa.

patch 0001: dt-bindings for Rock Pi N10

patch 0002: VMARC RK3399Pro SOM dtsi support

patch 0003: Radxa Dalang carrier board dtsi support

patch 0004: Rock Pi N10 dts support

Tested basic peripherals and will all more in future patches.

Any inputs?
Jagan.

Jagan Teki (4):
  dt-bindings: arm: rockchip: Add Rock Pi N10 binding
  arm64: dts: rockchip: Add VMARC RK3399Pro SOM initial support
  ARM: dts: rockchip: Add Radxa Dalang Carrier board
  arm64: dts: rockchip: Add Radxa Rock Pi N10 initial support

 .../devicetree/bindings/arm/rockchip.yaml     |   6 +
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |  81 +++++
 arch/arm64/boot/dts/rockchip/Makefile         |   1 +
 .../dts/rockchip/rk3399pro-rock-pi-n10.dts    |  17 +
 .../dts/rockchip/rk3399pro-vmarc-som.dtsi     | 333 ++++++++++++++++++
 5 files changed, 438 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip-radxa-dalang-carrier.dtsi
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-rock-pi-n10.dts
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3399pro-vmarc-som.dtsi

-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
