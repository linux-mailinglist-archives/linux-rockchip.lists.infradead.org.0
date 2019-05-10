Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76681A54E
	for <lists+linux-rockchip@lfdr.de>; Sat, 11 May 2019 00:35:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7LG1HYUyvvoWf4iAi49s6caiekPWijNcJTf3UCtC+iI=; b=VKNiwu/PyXyGJ1
	659Y8yXR32w8neDbfUS/ArhRKVgfmwTm9P2UTzg+jjRb4QaQ/GYVZ40oC30CGwBk7YUxtLlhE/lOu
	pZo16SR4L4hGALpioandnBPr3hbRzZwUkknPtv2QBegtiMIoFdgW714Om1ddQTB+0kD2xl/Swl8/H
	rUsBq7/bMDLXArO6H6UO9lnoKcDQCZlrL8SLmrfLmX3Qbk+zitioe1dT5LJOq/p+Ay7s3KJWSe+yK
	bmcMgvlBIYDkLAJk4uyao+5C9gGF3HLQSxTP+S0BmUuUZ8Bu9HpZIVKQmVfz62aJR420h4Y4gLfgf
	wuq0JZWK4Y/2ldCt1bkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPE6l-0005Fn-FZ; Fri, 10 May 2019 22:35:15 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPE6i-0005Ew-Ef
 for linux-rockchip@lists.infradead.org; Fri, 10 May 2019 22:35:13 +0000
Received: by mail-pf1-x443.google.com with SMTP id z28so3946573pfk.0
 for <linux-rockchip@lists.infradead.org>; Fri, 10 May 2019 15:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WUHTu2iWYOnQ+FG1Jw9nXlKv7Z2ExyMTaZIZxvh4N1A=;
 b=hCrHuZS+46Po1sU6nnIKOLhIcano3vwfug8LQFQRcGVzUvhpAF+0tf28VytjzxOZqL
 Xl6JpsSL0vwxBpq7m+OZgEVIfWzalVEsf1aKQE9B6FEjYE8k3jMMYsejs2mvuqS9M7cn
 XASxVqZcO9nuQktMTgSgSLhuOrzwq+jc/LIXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=WUHTu2iWYOnQ+FG1Jw9nXlKv7Z2ExyMTaZIZxvh4N1A=;
 b=MdF0UoCqRUMGUrNgXqpZs23O2gIlFrCkKxkCjxroNnQi/bzUg3gSO9AJm3jKwpZuDA
 k8OsKDKgdy6uZqwGR0DDgQQEXG3NUZTewNouH8SAShBH7KGZzERZV/SIS8RKxqTX4Ung
 vZuLA2RfEtlwXTf7h3MNk3NCG2C5RBIWznnWSCnZgPf2NgnuuHdzGheiVSsLatXCWj4v
 vf1nbM4IMujAqvJNhz0g4yDH/6yxZXN83htLig3dcgG0gxkcetvT+R4xdxA1uhbPA8yj
 nEohKpfH9pHTRytsxmz+t+/c9LJ7oiWo/9SFio3SZf+I9EnbHlMMV5HQPwlUtUxdvm9j
 DCJA==
X-Gm-Message-State: APjAAAViyWzgEEI4dOFi9M4PORhHy811zcf8e3CcaBmREeivVDJzhJpy
 fTQRIgL7RFyfKTPFBj5dhzFQ1w==
X-Google-Smtp-Source: APXvYqyOeodYctuSbplQTqoU+d4nsO/QhEglv7cTdPcZH4nSpAWNrFBF8kqyyKdVfa8CLgtxbAjBHw==
X-Received: by 2002:a63:f315:: with SMTP id l21mr16528352pgh.417.1557527711448; 
 Fri, 10 May 2019 15:35:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id j6sm7689393pfe.107.2019.05.10.15.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 10 May 2019 15:35:11 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Mark Brown <broonie@kernel.org>, Benson Leung <bleung@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH 0/4] spi: A better solution for cros_ec_spi reliability
Date: Fri, 10 May 2019 15:34:33 -0700
Message-Id: <20190510223437.84368-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_153512_519198_364F3F35 
X-CRM114-Status: UNSURE (   8.21  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: drinkcat@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Guenter Roeck <groeck@chromium.org>, linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

This series is a much better solution for getting the Chrome OS EC to
talk reliably and replaces commit 37a186225a0c ("platform/chrome:
cros_ec_spi: Transfer messages at high priority").

Note that the cros_ec bits can't land until the SPI bits are
somewhere.  If the SPI bits look OK to land it might be convenient if
they could be placed somewhere with a stable git hash?

Special thanks to Guenter Roeck for pointing out the "realtime"
feature of the SPI framework so I didn't re-invent the wheel.  I have
no idea how I missed it.  :-/


Douglas Anderson (4):
  spi: For controllers that need realtime always use the pump thread
  spi: Allow SPI devices to specify that they are timing sensitive
  platform/chrome: cros_ec_spi: Set ourselves as timing sensitive
  Revert "platform/chrome: cros_ec_spi: Transfer messages at high
    priority"

 drivers/platform/chrome/cros_ec_spi.c | 81 +++------------------------
 drivers/spi/spi.c                     | 41 +++++++++++---
 include/linux/spi/spi.h               |  3 +
 3 files changed, 43 insertions(+), 82 deletions(-)

-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
