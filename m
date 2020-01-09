Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00ADC1354D4
	for <lists+linux-rockchip@lfdr.de>; Thu,  9 Jan 2020 09:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJZUPa4hsRe0/U1ndQYMh0WvWqs3VcdlB6BNBYJlTT4=; b=RrItRJ6HCtOgxw
	GTDVlnbnzDD37PAGmLG2/xIvzpUz4RUW6LExXc4bQ9t59gRLLfzo85axIB+3Y5bfv/nE5fFoDgOqw
	eSbLxbjsXXhMhkIRJKb8EBRZv0JUNkrlKWGcy8vie8iS50UURNenMAOBggbvPTwo+Vt8ZXuLoH06d
	ZrW9qxihyfaCehX93Ace+HQWW1k2Z+HCAIGDznnNqf7gV0B20FIx44QYuH+x16Zo7JWMHeTm8TFx6
	HrvdOae1CEN0mW/XHECdxI7uSc7zcknA4LgFd8573yfs/pyproxCnmbxYuKGoUtEgQzkEELsLU4GI
	NA76bR8Hc7VSoM7/wulw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipTZ4-0006V3-C8; Thu, 09 Jan 2020 08:53:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipTYu-0006KY-By
 for linux-rockchip@lists.infradead.org; Thu, 09 Jan 2020 08:53:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id i23so3064802pfo.2
 for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2020 00:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wU89ZzkCdHruUB3Gwr5/4Tn4Jy9OV6GxNn11DpZfCms=;
 b=DMR5la/v9TqwSmqf3zX/3sQi2AA7Y+9kSovl+Fws7sFKdep/J1JNPmL5AgoT2+V4Ip
 AG41QAlQ4E01m8imkH8wsw5Lcz/ilih0HhRU4/25y/+ro01XaHn4AG2TowvpT5dtx8X2
 L7USectqdyPWAYBTVEmSIB3b+YXj/OrdoImHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wU89ZzkCdHruUB3Gwr5/4Tn4Jy9OV6GxNn11DpZfCms=;
 b=dYdfL8r2+AweV9FPtud3veh5353uqbwbm85MoL5q1wRuniYMVCVVlMGTF1d9fMCmoS
 VlRPE6aKhUL1yZ8Y43/rsCl8LRyNen2deVFe9Pw0oSOib76koL/U8IEaFcb+Cw09k0Na
 HVmivfEyXmiIWs6uuYC/YQa5DriQwhK/cEV+AG3o/8O/Uzc9O/7NCYFQqs6KrehV6LmV
 mtYz1fwF3u3Pr4ObrRPOEBVNupXPgobtQyiBQfOid8lZqSdtURd+Xxm9WY/EYdQelU7c
 +cDqhzOW0cogZx6dgjW6zJCCxUN1gsXsfytlmv37NaAF2SU22VlM9ZjGSD5YW/vm+Lbd
 hHOg==
X-Gm-Message-State: APjAAAWCbHImLYeCVMDqCRda5nRIagBAnLkdVzn3f5SfZ1sn6StdJnUB
 Jegy+XCrrYSNzNe2S21sMCi76Q==
X-Google-Smtp-Source: APXvYqxSg/FNhuzWIKi4XRCSOgfKx7gm/3sp2+6uFWDsvAQv5Jx3pQfg4Lf8E5LcbGwb9C+o8Rc2Yw==
X-Received: by 2002:a63:1344:: with SMTP id 4mr10371705pgt.0.1578559983723;
 Thu, 09 Jan 2020 00:53:03 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c809:c7d5:d888:9871:544a:b516])
 by smtp.gmail.com with ESMTPSA id o17sm2139121pjq.1.2020.01.09.00.53.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 00:53:03 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [DO NOT MERGE] [PATCH v4 7/8] roc-rk3399-pc: Enable watchdog
Date: Thu,  9 Jan 2020 14:22:21 +0530
Message-Id: <20200109085222.22670-8-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20200109085222.22670-1-jagan@amarulasolutions.com>
References: <20200109085222.22670-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_005304_559533_7B536D58 
X-CRM114-Status: UNSURE (   7.29  )
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
Cc: u-boot@lists.denx.de, linux-amarula@amarulasolutions.com,
 Jagan Teki <jagan@amarulasolutions.com>, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Enable watchdog suport for ROC-RK3399-PC board.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 configs/roc-pc-rk3399_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/configs/roc-pc-rk3399_defconfig b/configs/roc-pc-rk3399_defconfig
index bf83b25dbc..b30ca55107 100644
--- a/configs/roc-pc-rk3399_defconfig
+++ b/configs/roc-pc-rk3399_defconfig
@@ -54,3 +54,4 @@ CONFIG_USB_ETHER_RTL8152=y
 CONFIG_USB_ETHER_SMSC95XX=y
 CONFIG_SPL_TINY_MEMSET=y
 CONFIG_ERRNO_STR=y
+CONFIG_WDT=y
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
