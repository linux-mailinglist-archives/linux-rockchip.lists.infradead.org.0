Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8AD1B758D
	for <lists+linux-rockchip@lfdr.de>; Fri, 24 Apr 2020 14:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JNfzM/0Lxq3VKhpVllsG6qalet9nSK/0gm3cjEvy1YQ=; b=WSP
	5Z1eO6r1ZniMxOQt63yNnyhi1uzk+d20jCrrg3cE00kYUwYod4Wye5Y7ovdTYhm6UiqFWveWQNdKd
	S2PFk8FuH//uIS3O1jzo1+vsYkqvJHGLxc2jQqjxdkVpBh5Q6vH8Jq3OviShvmLUPSY9pgsfvrB8a
	c8nC82d484TFyXbxpU3OmB6fXZp3VDkGSHIJafwiRYJDEu9gH+49SAW7C4XZOxul5Y7kYYpCY8h49
	uW5zwXdYw4vT+yhMF5xK/9Z6jflp5A07lMuEKDCQzhHdxXVP4RDUD/ZmMwK2QCI9cz+Je2NcxGk54
	szvZu0NBoZDK3Yc4Li9g11j3iW+isUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRxcS-000216-9x; Fri, 24 Apr 2020 12:39:48 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRxcF-0001ra-JS; Fri, 24 Apr 2020 12:39:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id k12so1701795wmj.3;
 Fri, 24 Apr 2020 05:39:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=/5FhewZOjMa+L+2tqcMzJgPUq1JNbdQFqoKSCaQXbEM=;
 b=teIk66JmO3IgWg1GspSg6VCLItxXTdO1u7eb8fUFMU1hNrcoBYZXDVZoLV6cPR1RMF
 Kv31jgC7+Q1/s/yQIy2NIpwJ59DdnE6U7NT6Y4kyOGlze/NKDXRptsRrBeFKR8xRbz5g
 glrUypL0KSIC7WPE1M6ct55WNR0c5Xt31WsWb75eFEBgstEfRymNxjm0e92XKYLn72YP
 yYcmw+lf3k92IBqkoaICC04Hb40kMPASXUwBBIeZAqw+k6hGmE8dGn94vUO+9/uk/+Gn
 Z5mJsfiT2cciloi5lMLEwBDP3dlkGN305mOnuo/C6bthykIkjf5IWmEYSYCuGJXxjPut
 fmHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/5FhewZOjMa+L+2tqcMzJgPUq1JNbdQFqoKSCaQXbEM=;
 b=EPULjlnyn8kInBW3IzrHqxTFbD6SI0R5gPBaUqfgQxEnG9U8dAJRKYRZPB2e5q+A9Y
 8TOBCZM154klaiEW8aN8qS0AbS+DZIBynYUqEE8RUkcYs9X2QZE/g0z1hDjw3d1eb6tg
 VS/vwSJfgp6Hwgh1liOXdah5T/WlglPto42xHzfTOt2MlPWLsIz7LbiW9gVUQyCJyaYK
 K/swOZEAPyg8AyjjSGrPL7HJycbUeP1j3cZ6mNbXKMPSjyZBd00JRXFAS3kD0Q+cVomU
 q5AFn7ZUndCyg4WuaFFpHmUr3/I7HzB/0ypjK1MbWSilmQvKZbcZClzg55Qwx2+qgk9a
 g2qg==
X-Gm-Message-State: AGi0PubiB+AXsxIAGeOkFw3e1wObN38T7OoiiRP9+04+tkpKrK9fCwhz
 WhpMq8sb7vPPNzsSxwUGBc0=
X-Google-Smtp-Source: APiQypKzAVcFFjXq84S98O4oSdfTNcU47XV/qwKDcg5zoIea/Yi23V/u7OuB9vSrNLmWi+JIwU/mEg==
X-Received: by 2002:a05:600c:210c:: with SMTP id
 u12mr10328859wml.135.1587731973727; 
 Fri, 24 Apr 2020 05:39:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id b12sm9136457wro.18.2020.04.24.05.39.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 05:39:33 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] ARM: dts: rockchip: fix pinctrl sub nodename for spi in
 rk322x.dtsi
Date: Fri, 24 Apr 2020 14:39:23 +0200
Message-Id: <20200424123923.8192-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_053935_656370_6D9E6397 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

A test with the command below gives these errors:

arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-0:
'#address-cells' is a required property
arch/arm/boot/dts/rk3229-evb.dt.yaml: spi-1:
'#address-cells' is a required property
arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-0:
'#address-cells' is a required property
arch/arm/boot/dts/rk3229-xms6.dt.yaml: spi-1:
'#address-cells' is a required property

The $nodename pattern for spi nodes is
"^spi(@.*|-[0-9a-f])*$". To prevent warnings rename
'spi-0' and 'spi-1' pinctrl sub nodenames to
'spi0' and 'spi1' in 'rk322x.dtsi'.

make ARCH=arm dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/spi/spi-controller.yaml

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 06172ebbf..e3b27da0a 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -1020,7 +1020,7 @@
 			};
 		};
 
-		spi-0 {
+		spi0 {
 			spi0_clk: spi0-clk {
 				rockchip,pins = <0 RK_PB1 2 &pcfg_pull_up>;
 			};
@@ -1038,7 +1038,7 @@
 			};
 		};
 
-		spi-1 {
+		spi1 {
 			spi1_clk: spi1-clk {
 				rockchip,pins = <0 RK_PC7 2 &pcfg_pull_up>;
 			};
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
