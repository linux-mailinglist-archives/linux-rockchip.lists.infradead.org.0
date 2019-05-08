Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6E617350
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 May 2019 10:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WfirHFEWfd/wxgE1Gv2980BoNlxJ+wTWMCagYNP0Wn0=; b=UIQaH0F6SNdWNr
	714vN5gSzXb4t/nTLAy6Lh/+rGQu2wen503skMVkkQWWu2X0WDn3YjkO1s/KZaJCWMN8Q9Aylt23F
	bOh/3yHJaCgi9vsDEZRItdm+sMNv+zj28Di4scdPAQ2P9Jy+zCL6AfPnnlrgz3p5MGlsoH586VqON
	fyC36XBdLdeUcRbtE5EDlH0g8ghWmWx5ZSMMNXdkU8VdOFQ3TfrutwKAvCqecO9pxzqwH0N/RMbyt
	DJa8jwU5HyvsxQd1d5hS5FE7ePRflcyMbz1GG7yEo8esijX/FR+xm3GYFETDMQWPEigVShlBFdkfq
	YbChddhHWARCTmkXtI9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHeB-0008BC-4b; Wed, 08 May 2019 08:09:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHe8-00084l-UY
 for linux-rockchip@lists.infradead.org; Wed, 08 May 2019 08:09:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id j26so9705973pgl.5
 for <linux-rockchip@lists.infradead.org>; Wed, 08 May 2019 01:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=YAVX44TjixlyUBQzD0G7+JGPLwAIIoO4XVm2kwePVsI=;
 b=laPxROST0tpZOjNlRc/EgG8m/HAQLk8u+hUitDPMgEAkFErdAiNBxA7/T9PN7JxGDf
 tV5JMGPvdBAklmgdI7prwvwOADRsoVe0uMNHxJ+sklhMYY+3HmP5Do7wMt6W9vnJTQrY
 gUa7jOXiQ8W/aTylnEWVMA3ZFBeu0cqZKc0ZE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=YAVX44TjixlyUBQzD0G7+JGPLwAIIoO4XVm2kwePVsI=;
 b=NnNgu6ELu2xWs1Cm//TArLvXDmeRawuhJmZcc0pFKIS81OJsn9tBOvm+64BveB0Xmw
 4pl3baZO0gCAHPzDHT95IhXjLNGiLs5TsIgkliSdemJ1mOtgWcSa17YnyDIbJk5IXMIP
 uKOKxB3+vjah8ceWRMi+54FfJMC8WmO8i25IoejMALelVtWQxr1ezDNTH3Fwvfh/PeyX
 fvdyeME9YA4cIvQgazE/WWLU5ZxuHaUIc0E42aHWrEClIvEBprKctTGKXyIlwrXvFJa+
 I+BRQXy1aROu+p2LzBVSipifPdH2GFwxeAsYBg9W9X0lRivvr5oanm3SOEicSwTBkSFA
 TNSA==
X-Gm-Message-State: APjAAAVAyrRci3VdWpL43PKN6RovvT9/xNmqlceqElZVl89MO1Z0F5h+
 jBDhpes+nCUEYnILG4RFJupU/Q==
X-Google-Smtp-Source: APXvYqw1uI580qCkwrDku0hxEyRJNc5a5i94Av0tAGlRXnQ0y4f/uYNU8/RT538AnzU38qDnoohxYg==
X-Received: by 2002:a65:5886:: with SMTP id d6mr45196928pgu.295.1557302988487; 
 Wed, 08 May 2019 01:09:48 -0700 (PDT)
Received: from localhost.localdomain ([115.97.185.144])
 by smtp.gmail.com with ESMTPSA id j9sm33537133pfc.43.2019.05.08.01.09.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 01:09:47 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 Kever Yang <kever.yang@rock-chips.com>, Akash Gajjar <akash@openedev.com>
Subject: [PATCH 8/8] rockchip: rk3399: Enable TPL_BOARD_INIT
Date: Wed,  8 May 2019 13:39:04 +0530
Message-Id: <20190508080904.1567-9-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190508080904.1567-1-jagan@amarulasolutions.com>
References: <20190508080904.1567-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_010948_986339_85AB9CCF 
X-CRM114-Status: UNSURE (   8.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, u-boot@lists.denx.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable TPL_BOARD_INIT, this would help us to show
TPL boot prints.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ce039022df..1d483be8b9 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -184,6 +184,7 @@ config ROCKCHIP_RK3399
 	imply TPL_LIBCOMMON_SUPPORT
 	imply TPL_LIBGENERIC_SUPPORT
 	imply TPL_SYS_MALLOC_SIMPLE
+	imply TPL_BOARD_INIT
 	imply TPL_BOOTROM_SUPPORT
 	imply TPL_DRIVERS_MISC_SUPPORT
 	imply TPL_OF_CONTROL
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
