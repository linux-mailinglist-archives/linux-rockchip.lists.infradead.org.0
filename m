Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A6B1FF8E4
	for <lists+linux-rockchip@lfdr.de>; Thu, 18 Jun 2020 18:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aOdCR8Q1HXbE9nKWqLUwXTYSeagq0Zux4JxO9N8lknc=; b=CATcZk9Afsc3xE
	IyZh+za+zuHDEfiz/6myHO3+Xtt7PhKQFsmgdMcBwKAGTIRn60OYy158O7pUZokZyJ8MwSoSoO6Z0
	c9aK+/I4oH2Q3+TuNhUtml2MtOEi4dH2E5caTZ3FyulUpUUJyVJ+ySgZnNforauVZJOR66KYLUt9l
	T4ae4lFmyht0nzhCbECAwJSSBxZ/itjInauw1XGm7rldSwN0QsJbs7wsdmLnE17DNb86Jud6VnRZk
	XOpJ+ls5DL1Y0Wkq6Mnz9/w26bxRrOh+gdzOZbmM6SAVwX+fjUzCc86sSf/Bu7Hh/aoe7XMni5tNz
	DY6gHmWJMKOxybEQPPsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlx9W-0003i0-VW; Thu, 18 Jun 2020 16:12:34 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlx9U-0003fg-LJ
 for linux-rockchip@lists.infradead.org; Thu, 18 Jun 2020 16:12:33 +0000
Received: by mail-pg1-x542.google.com with SMTP id v14so3122101pgl.1
 for <linux-rockchip@lists.infradead.org>; Thu, 18 Jun 2020 09:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zoj9WyU2bqQK3SG2yN4XyxA8U89PNJD0eBlDF8ndOdo=;
 b=bAZVNDaCtKdmj8oxdFA2i8cvSo+cGlcIqA1IOz8X+6zZgdx8WolQPC5KoZDBG1upKl
 iIPbGgGab7/ZizBIolsYE3+z4JXS6ezUamzkcNxWMSP4+oj2aZ5/iuk1lcLoOIlp/4LN
 tCdZ9wjbqoQx3o0ac1DMwzMR8PiCQK7tUnWHc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zoj9WyU2bqQK3SG2yN4XyxA8U89PNJD0eBlDF8ndOdo=;
 b=tRXn/8XJU1k1RNs1Oi+sUB6A7HL4EX3TJzX9mVYzBLi/NzQP5T4IRVK1z+g44C3+qk
 UcsUXb2PT9cm7rL1aEhQWSZ+qzQDZ2RGmjO5HGMZpdupxFbsDdkSVf6IjKV1l9xkcQ3S
 RdS7UGeB1W8DXNEmcQqA6dLOlJ02sO1rzPp1GR/GroZQndVvf5CWtQSguJajXZjwOeUv
 MlOA3F/Wgp1Zpv5oXVKLx+WBajT7/Wi8XRhsTzEtz/imA1MgJxHUImlSrAoxqfDQuNuk
 gPl4UHKujiuR+EB7B6fDIjFvxkkaKC02VIQRVaGiv+sYaKt7z4AhLZ83W3JQzJOh7BYk
 JZHQ==
X-Gm-Message-State: AOAM530aBEVNSJK8CzTM204Lv3LMGevRX1UWikrEyJ4Kjcw1CVYMvPrr
 UYVQQx5pr/jDQJhliqJmjvX31ayHohHEuw==
X-Google-Smtp-Source: ABdhPJzw/VKoRZ1PKBhjqGuAkHNvVhRIrB5w+7T4oeRMe9/7Y5KB4A3uFDcG8S+pa0pN+uNdmtrcRw==
X-Received: by 2002:a63:5d1:: with SMTP id 200mr3981969pgf.59.1592496751989;
 Thu, 18 Jun 2020 09:12:31 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c809:c7d5:b0c7:f192:869b:df87])
 by smtp.gmail.com with ESMTPSA id b3sm3247252pft.127.2020.06.18.09.12.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 09:12:31 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Simon Glass <sjg@chromium.org>
Subject: [PATCH 0/3] rockchip: Add Radxa Rock Pi N8 support
Date: Thu, 18 Jun 2020 21:42:17 +0530
Message-Id: <20200618161220.219452-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_091232_701613_FA3347DD 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org, Tom Cubie <tom@radxa.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Suniel Mahesh <sunil@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Rock Pi N8 is a Rockchip RK3288 based SBC, which has
- VMARC RK3288 SOM (as per SMARC standard) from Vamrs.
- Compatible carrier board from Radxa.

VMARC RK3288 SOM need to mount on top of dalang carrier
board for making Rock PI N8 SBC.

All these respective dts patches are in Linux mainling list.

N8 board support TPL boot flow.

Any inputs?
Jagan.

Jagan Teki (3):
  ARM: dts: rockchip: radxa-dalang: Update sdmmc properties
  ARM: dts: rockchip: Add VMARC RK3288 SOM initial support
  ARM: dts: rockchip: Add Radxa Rock Pi N8 initial support

 arch/arm/dts/Makefile                         |   1 +
 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi    |  33 ++
 arch/arm/dts/rk3288-rock-pi-n8.dts            |  17 ++
 arch/arm/dts/rk3288-vmarc-som.dtsi            | 289 ++++++++++++++++++
 arch/arm/dts/rk3399pro-vmarc-som.dtsi         |   5 +
 .../dts/rockchip-radxa-dalang-carrier.dtsi    |   2 -
 board/rockchip/evb_rk3288/MAINTAINERS         |   6 +
 configs/rock-pi-n8-rk3288_defconfig           |  66 ++++
 8 files changed, 417 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3288-rock-pi-n8.dts
 create mode 100644 arch/arm/dts/rk3288-vmarc-som.dtsi
 create mode 100644 configs/rock-pi-n8-rk3288_defconfig

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
