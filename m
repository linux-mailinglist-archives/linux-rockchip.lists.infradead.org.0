Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 741E89D5B0
	for <lists+linux-rockchip@lfdr.de>; Mon, 26 Aug 2019 20:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nhv2gChpS+NVmxYYE/b1GCtTOsLCI1WG8VrU5gVSRyk=; b=qb4oOpEFqHwqB2
	Oe9kIVRFoY+v42ZUhPIuDQ2g+CAdboAcSx1byrL5LnLuQyOB9Q2zNqdvk3GZ1obSq0V3tBahvCM4v
	G6nlT6r/ELHmxmSxVjWTpDItTuN8pj16ksmRnJCM+YWCCbl2M2h3ZPmtTIUBhofQXtjjwND8rN6Wk
	8Vl/VKrpenR4Qo5PLrTVkMYjzswQG7nOsSjo7t7TeKKyHeecX7gqriAQn8AlR4vfdpWE8UWrYQGv8
	BGlCZvM/0LXGHiRMkv28wy23i02qm25jjTVMvpGI7Du3pScfm4AIzrhN/VDkYRxXE8CYMGxgEYsTg
	cb5hK3e1W50ladVfmC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2JcW-0001U0-47; Mon, 26 Aug 2019 18:21:36 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2JcN-0001LF-0H
 for linux-rockchip@lists.infradead.org; Mon, 26 Aug 2019 18:21:28 +0000
Received: by mail-oi1-x244.google.com with SMTP id b25so12889988oib.4
 for <linux-rockchip@lists.infradead.org>; Mon, 26 Aug 2019 11:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Wq6GJCz6OpwvPx36T+BmHN2obhM+vzYcJ0vK8rO0YF0=;
 b=Tk2a6UaEgy8bLEJzNNmf8GiL3Gs5M+jwjpHH0fIC6Mp6hUrKWks4kz1wzyp5hzbKx8
 9p9JIHe3CLEhrq9cIQbtznNjh2cGpqBVsnrju2GM+Hog6gnYhtDD+0YzeS99Ptnud9TU
 JDEB0vEUwVN4EoCqBRyMvv7TzP4pZy0yLpVEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Wq6GJCz6OpwvPx36T+BmHN2obhM+vzYcJ0vK8rO0YF0=;
 b=UudiyIoGkXdDSz9gokkhSg1jOv57KH6eLCMl2kfObfGsy0PjN3MpkB++/pjOTYSSV0
 8S2JDZ6sLhXwIedvM9Y5ABZ6kMUAkqtVqwAwZVCrfwwqp1cQGbGh8U894GvXBfwsNH0o
 n6/AvGAWNf2vY+JoApKP0lKrbIxxusJuoOgHkhA8VGxfdxpLZtayofGsHdQnLgD6VxAk
 vGX7kpvTaDbc4DKfPa/GjSL+X0tR/kfdvgMJVfU8N95+SGB9xIDWSdoCHVknbEL7ZtZ5
 MPigcA3TosH7b5hqXXrNDQrKWOTeJ2Ffm5IKRG3wk0CD4c6bAyuX3BHCxRKKRlq9SY++
 /uVg==
X-Gm-Message-State: APjAAAWgIZJcnAEn72ucsRkWAnI2tV8wzeoz7cM01w+IxkW8pC3DiuOt
 nsGxFNOBj3S6NwrsOhCZHOHy2g==
X-Google-Smtp-Source: APXvYqwzZ/PiVrQXQ6oBQLLL7lJqr7Kr1C+2vz72tJWQQzinstXO1Y8+qg2LbCyya9vYW49iClkzDw==
X-Received: by 2002:aca:4e0a:: with SMTP id c10mr12953762oib.61.1566843686355; 
 Mon, 26 Aug 2019 11:21:26 -0700 (PDT)
Received: from jagan-XPS-13-9350.attlocal.net
 ([2600:1700:7430:38e0:d5b0:4823:33c8:5e46])
 by smtp.gmail.com with ESMTPSA id c11sm4401461otr.54.2019.08.26.11.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 26 Aug 2019 11:21:25 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>
Subject: [PATCH v2 05/16] wdt: designware: Simplify is_enabled function
Date: Mon, 26 Aug 2019 23:51:00 +0530
Message-Id: <20190826182111.30999-6-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190826182111.30999-1-jagan@amarulasolutions.com>
References: <20190826182111.30999-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_112127_049609_C097194B 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rockchip@lists.infradead.org, Chin Liang See <clsee@altera.com>,
 u-boot@lists.denx.de, Jagan Teki <jagan@amarulasolutions.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-amarula@amarulasolutions.com, Akash Gajjar <akash@openedev.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Right now the designware is_enabled function is using
numeric number to check whether watchdog is enabled or
not, so use register macro and check the same.

Cc: Chin Liang See <clsee@altera.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/watchdog/designware_wdt.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/watchdog/designware_wdt.c b/drivers/watchdog/designware_wdt.c
index c668567c66..bd858f0608 100644
--- a/drivers/watchdog/designware_wdt.c
+++ b/drivers/watchdog/designware_wdt.c
@@ -45,9 +45,7 @@ static void designware_wdt_enable(void)
 
 static unsigned int designware_wdt_is_enabled(void)
 {
-	unsigned long val;
-	val = readl((CONFIG_DW_WDT_BASE + DW_WDT_CR));
-	return val & 0x1;
+	return readl(CONFIG_DW_WDT_BASE + DW_WDT_CR) & DW_WDT_CR_RMOD_OFFSET;
 }
 
 #if defined(CONFIG_HW_WATCHDOG)
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
