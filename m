Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 489FA6A822
	for <lists+linux-rockchip@lfdr.de>; Tue, 16 Jul 2019 14:03:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLBhmtkI72xbY086iXYeK9VaSnqDPSd+EM4IYu5gAk0=; b=Hcu6gE1J8w+E6/
	vPlkrfuyNHa5WOVJSC1bw2xi7uBGF9z89yeoQbFFrVW890YbbUl0Ns2PTVuVqJrCzXTAFUoJwrSa0
	5vlZaNWOhd49/TDEkNTobr4T+haW6vmWmQi+vpYR6mYB9pIYCK4+4lA7k/07fUsEh8BWd7E7mfw9v
	ZVgX5XqfyGnKgeR7vcU+ba1uxFAA5iDFdAEEdUy5xKo10jRoxR03mmtqyf1+/VA32HcE/+cb7Vmoj
	CaOYgwJIj+vyDkqCxthY6z/a/AVdif1kJ9e97m7HxZKCoI6rBGvH3gyKT1uuPgWS3QOvYCcdS4g9A
	UMQ31gs6GENnsCMLKwMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnMAc-0000Qq-FE; Tue, 16 Jul 2019 12:02:58 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnM8s-0007Fc-TG
 for linux-rockchip@lists.infradead.org; Tue, 16 Jul 2019 12:01:12 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so9014250pfa.4
 for <linux-rockchip@lists.infradead.org>; Tue, 16 Jul 2019 05:01:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bRhil/NYHQnUOi/tLSERAyGO+6cDsKMuNXt9MkG9t78=;
 b=lQgdM5HCZ7xdCj/jL5KsM9xOAv3G/PdYnw516+EU1NGFHHuk6y9WAxTANmOjsikXcD
 29BvIlNGaw7Xv/WRa3WSDxcchlY2c9TEmHAAOOiFwH9Y05phF3lcYJxWSw88uycJewFz
 8rwayvFE8GUbwUWwbi3SVfsmx1bOqOFGAcgwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bRhil/NYHQnUOi/tLSERAyGO+6cDsKMuNXt9MkG9t78=;
 b=RRLAW27PilGH21jKUGEUpbDLgZ38/7QGssoall3VyHNiv8J9cgYZKeFWNpB7Tu7/Rh
 r050s2D1hamwBH0sox1moE2Wcx3uhbQdOaOLw+mr+8LEIfCpb59eDfdvbQj5SgCnLxvH
 JF+Ylyhy8tD3cFlsqa5+FzNdkxzHLTn1OkrFwiMSu9TcHR0zPGTmOh1c8uUMmHc3Clo/
 hc26kuMqLc8qiBToA8TwGRgkk3fP3OGjaIBNwCX3VBInKLWDri1JprWA3ZO/BW319EAQ
 X/1KfVal3rIbaJ8yMrI2uwC/9q3vyf3C37Q7aFFsXy5Tk+ofcLBECJ1EaA7rPFfUORCB
 V42A==
X-Gm-Message-State: APjAAAWJnvaIOe2Flefz1Lqyrl/trggxmAr2GMwkHxpu8VAGpMwc1LpG
 aDfhMU5zQJGBHlszy9xcoXLADQ==
X-Google-Smtp-Source: APXvYqw57gPUHMuf3T2pTxTyIib8CZksvtj7Dklo9F8bw5Abr65fQGUIjCMS9DuV6tAWcrWkF8Ejkw==
X-Received: by 2002:a17:90a:22aa:: with SMTP id
 s39mr35500168pjc.39.1563278470362; 
 Tue, 16 Jul 2019 05:01:10 -0700 (PDT)
Received: from localhost.localdomain ([49.206.201.107])
 by smtp.gmail.com with ESMTPSA id z24sm36269566pfr.51.2019.07.16.05.01.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 16 Jul 2019 05:01:09 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, YouMin Chen <cym@rock-chips.com>,
 u-boot@lists.denx.de
Subject: [PATCH v3 54/57] configs: rock-pi-4: Enable LPDDR4 support
Date: Tue, 16 Jul 2019 17:27:42 +0530
Message-Id: <20190716115745.12585-55-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190716115745.12585-1-jagan@amarulasolutions.com>
References: <20190716115745.12585-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_050110_975015_D516F261 
X-CRM114-Status: UNSURE (   8.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, gajjar04akash@gmail.com,
 linux-amarula@amarulasolutions.com, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Due to foot-print issues, we have LPDDR4 code can be
marked as CONFIG_RAM_RK3399_LPDDR4.

So, enable it for Rock-PI-4 board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/rock-pi-4-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-rk3399_defconfig
index be670df23f..c6fc9b995d 100644
--- a/configs/rock-pi-4-rk3399_defconfig
+++ b/configs/rock-pi-4-rk3399_defconfig
@@ -28,6 +28,7 @@ CONFIG_SPL_OF_CONTROL=y
 CONFIG_DEFAULT_DEVICE_TREE="rk3399-rock-pi-4"
 CONFIG_OF_SPL_REMOVE_PROPS="pinctrl-0 pinctrl-names clock-names interrupt-parent assigned-clocks assigned-clock-rates assigned-clock-parents"
 CONFIG_ENV_IS_IN_MMC=y
+CONFIG_RAM_RK3399_LPDDR4=y
 CONFIG_ROCKCHIP_GPIO=y
 CONFIG_SYS_I2C_ROCKCHIP=y
 CONFIG_MMC_DW=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
