Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5E511E0125
	for <lists+linux-rockchip@lfdr.de>; Sun, 24 May 2020 19:32:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mPJgZhI3NzGhiH/hsfDZ1SLTwnOYjNmNFbY9vm6kmZQ=; b=sFdQoXTQ4XsCer
	3ktQlqjdnHlwFISdqWVnm2Xyz957J3vFYv8wnX2Mm/BdyCOOmpmkIfEf8g7uydB26+g27K0ZZ+3v8
	HghKUtWlKU3c1hg9NtlDdOO2DuQ/LlAp/RquLcYSm9JL1evDzBZY0jRujL5ZWvNLemPwfFeAh46+k
	kQ0de/QMK4iMJKzW5SsZ9V2GlME/w9CLfx7fuhCRlOhJ9LSdUDiBi4z7xGvcl/RhOMnEhJOd2nlm+
	Ha6EwTkFIAvtwDM5sCMsqBXtvct97IlaFVQSXk8gTHXDfegLxh2kfIVgbO1VF9b2OuQatvvI7uDbx
	jyre6Nm+WV74j6jgmwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcuUU-0004gD-Gf; Sun, 24 May 2020 17:32:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcuUR-0004fb-Ah
 for linux-rockchip@lists.infradead.org; Sun, 24 May 2020 17:32:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id a13so6632929pls.8
 for <linux-rockchip@lists.infradead.org>; Sun, 24 May 2020 10:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JJFMF+Ax+5gVV/Q38dMlVO4gPHQpjzSEEKwWZgAY++Q=;
 b=oZUW2MmfKB8jINakU/3w9uta2sd1Ryn5oTGxJfc5J6dwebWzsdRETOJHyfl4ubiU00
 ubqzeaUlwUbaIGR/HTuR/fsGeFZm6u2dr2AeoYDeTzWFc7DrYHXJSyUZmDsE/op9gtW2
 6soVUIiNFHXvTIwp164bUVYPDqt80O7DtG/+g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JJFMF+Ax+5gVV/Q38dMlVO4gPHQpjzSEEKwWZgAY++Q=;
 b=Ie2Ftu0gXBw3rG0LZXNRVBpwAvOu/dguqI4k82HSCoCtI28d7qZL/Re8beA74MWgv5
 ypZwALIcJSwlZr05eiA9w//fqJ/jV77efxjn9weJ2Qop7XDZnp7PoIY1KHQWep0Of95/
 yeYRbebiOisL8X9p90Gvrr8bYhQplLAaFdRL1gWFVBgK+MRQW5szfS1tJTKIsLkA8pcH
 smPec2FkTV4Dm/V8xERVtfHUEtcWSiPYgQiDO1nc+o6tApyfJCBCdY+pMXigF3DwrmIj
 bfFS5p1zEBTmlp/SvmjmSSBwaD76Bhf4nL2RgR7myka1kH1wHgNl3zpAKz/5oBe0tWS7
 kiCQ==
X-Gm-Message-State: AOAM533ZMemTw1KgIUQ16GeaBuMiG6ZZTYp6V9J9fz1PbULkAaAm7Rn1
 7a/UafXsM23akgK/sPZ3zFOcwoJHgIJWzg==
X-Google-Smtp-Source: ABdhPJxPJiPmY4iKRPFnKlSBW9IDXpplxGPkuhYHvNqoqQSeJEJeeC/eQVqQsovG2FvsPsz7hE505Q==
X-Received: by 2002:a17:90a:1141:: with SMTP id
 d1mr16820302pje.31.1590341566632; 
 Sun, 24 May 2020 10:32:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:9b1:856c:6c2b:bde7])
 by smtp.gmail.com with ESMTPSA id
 y85sm10617271pfc.24.2020.05.24.10.32.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 May 2020 10:32:45 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH 1/3] arm64: dts: rk3399-nanopi4: Add u-boot,spl-boot-order
Date: Sun, 24 May 2020 23:02:11 +0530
Message-Id: <20200524173213.201123-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_103247_366255_F333DDDB 
X-CRM114-Status: UNSURE (   6.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: u-boot@lists.denx.de, linux-rockchip@lists.infradead.org,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 sunil@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Add u-boot,spl-boot-order as sdhci and sdmmc for booting
from eMMC and SD card.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/dts/rk3399-nanopi4-u-boot.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
index a126bbaf08..a9d10592d5 100644
--- a/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
+++ b/arch/arm/dts/rk3399-nanopi4-u-boot.dtsi
@@ -5,6 +5,12 @@
 
 #include "rk3399-u-boot.dtsi"
 
+/{
+	chosen {
+		u-boot,spl-boot-order = "same-as-spl", &sdhci, &sdmmc;
+	};
+};
+
 &sdmmc {
 	pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_cd>;
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
