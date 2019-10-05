Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD902CC8A4
	for <lists+linux-rockchip@lfdr.de>; Sat,  5 Oct 2019 09:51:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SaJGYo9Zef+Fxa4AqDz4wTi1j0KPD2Moz5Kqbera8b8=; b=GM1uznmv8o5QoB
	AzMczqiSLrdj8jOhtylq5qZ66Rn+w+d7Fj7neXw5LQWj6MbQyE/V0QkNf5WMyFb5JEiCkj8peU0OB
	5vOyOCDC0yxLzt8Wq5X2KN4xERb31PvXCSgfFiUyYoY6YA1SpzHzoQZV2wRP8SLg7sMJ2iiGEuXrU
	M8a5YzeqwNYN68DgNe+bMoacgUa0OrwXJOM5uY+xVNNTb+ks9JVA8hBoUVoPqYxjbyB5V+uisQLrD
	l7S5ssvcSdOddILPWfpxbIMiZ0uVDeNfv75grQcZj2bOlRCuF3QRQSHcVTxOt9BKWNcgyLZ4ucTAY
	K5mTdVETFN8h9O+FsATQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGeqD-0002Vy-9h; Sat, 05 Oct 2019 07:51:01 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGeqA-0002UM-B5
 for linux-rockchip@lists.infradead.org; Sat, 05 Oct 2019 07:50:59 +0000
Received: by mail-yb1-xb42.google.com with SMTP id w141so2358268ybe.0
 for <linux-rockchip@lists.infradead.org>; Sat, 05 Oct 2019 00:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=helmpcb-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to:cc;
 bh=CjoSwE787/jK5Jj7I+WK9vvEWgxrGvAZOtqdwG0M/F4=;
 b=t+D28p0G3mdc25o4Sv8h77ivbb4FavgOUZPIOJQB2Y44c7uKqcwROVGfKLKLKF22oO
 +PxfBfiU/1dk+VNsKR/nzBiHW9lqWaoO3TlzC9/fqgwWRBpS5vo+Jd+q0FwSShPNvy1i
 yYQHmow8FWXyt0rnUJD2gDUCmN7U4/evPLR9OjDeGvzv52RWIt6dJ/oF1SUpI8GnT7Xu
 7jtPj2nHpQJAu+X041qhdDVYRhyodCvE8qQ0DFTkJuVKq3ihozbbdePnczv5EjeMNGDc
 1aM37/l6jHD6e5ciNPaK21lLpGtDX0MW9YA9lGr6BpdzruqfCfXIFHta9P+WnJDQsPBy
 I4aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
 bh=CjoSwE787/jK5Jj7I+WK9vvEWgxrGvAZOtqdwG0M/F4=;
 b=Cv4O2fpXTjxuTeYJJPH4W1Mmc7jGT1qEqvY1S+w30ancVP8j9jJ9QfAaomnoYWPlus
 U/J9uXxyfnrXd+k65yDrT3+GPJzV7ZBGsGAWEF1E6Badgw8gwp95SWWFER5lcVtDM7kN
 i1MMNkvtk8eL+GFFxzaslqoqYlAqNDJrASnbXVgeTKThDkYk4qHUYcsNJ5GSdwxFIQ82
 gF1tnMnMOLRJHdadKkaORwgtQ0wLz8y0DseRaVdVshRa8KynFkCkq6sjrYP8XW7LwKfT
 x3Yc2u5xNj5xzWlgni8j+BR9hcTwIi0sgTerPnJc1ax+0Tgbe+NMjFpk1XMbVwPagaAV
 jKgQ==
X-Gm-Message-State: APjAAAU4zPsneqZfNoBgHXN2sTgmJOby/2jHX2ESOfGE98r9RBXOjJHg
 LpWHPrgvPmvRZCROc5v9gb++r6+VQPNtmwr7RmVuEw+LvO4=
X-Google-Smtp-Source: APXvYqw7kaBXzmp443sTZgcpOhgrEC5fnp13JCtJUBHj026FlK+8hkBAwZHMSCtdnw+v8aSjN4d1mJ0/baQ3tEmc7L8=
X-Received: by 2002:a25:df97:: with SMTP id w145mr4441396ybg.424.1570261855353; 
 Sat, 05 Oct 2019 00:50:55 -0700 (PDT)
MIME-Version: 1.0
From: Amr Bekhit <amr@helmpcb.com>
Date: Sat, 5 Oct 2019 10:50:44 +0300
Message-ID: <CAHmAUHKD90eibgj3JmHaJNduhrOQZUZBZixtZE+dWxR2L6Bq1Q@mail.gmail.com>
Subject: [PATCH] rockchip_rk3288_efuse_read: Fix segfault in
 rockchip_rk3288_efuse_read by using readl instead of readb when reading
 REG_EFUSE_DOUT.
To: heiko@sntech.de, wxt@rock-chips.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_005058_559420_3882B995 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

When trying to read the efuse of the RK3188 a segfault is raised when
the following line is called in rockchip_rk3288_efuse_read:

*buf++ = readb(efuse->base + REG_EFUSE_DOUT);

It appears that the problem here might be the use of readb, which I
suspect is triggering an unaligned access. Changing this to readl
resolves the issue (as is done in rockchip_rk3399_efuse_read).

From 9923a6889aa325faf842a6757c9f9bd0f0195acb Mon Sep 17 00:00:00 2001
From: Amr Bekhit <amr@helmpcb.com>
Date: Sat, 5 Oct 2019 10:45:17 +0300
Subject: [PATCH] Fix segfault in rockchip_rk3288_efuse_read by using readl
 instead of readb when reading REG_EFUSE_DOUT.

Signed-off-by: Amr Bekhit <amr@helmpcb.com>
---
 drivers/nvmem/rockchip-efuse.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvmem/rockchip-efuse.c b/drivers/nvmem/rockchip-efuse.c
index e4579de5d014..f680a80d81cf 100644
--- a/drivers/nvmem/rockchip-efuse.c
+++ b/drivers/nvmem/rockchip-efuse.c
@@ -78,7 +78,7 @@ static int rockchip_rk3288_efuse_read(void *context,
unsigned int offset,
  writel(readl(efuse->base + REG_EFUSE_CTRL) |
       RK3288_STROBE, efuse->base + REG_EFUSE_CTRL);
  udelay(1);
- *buf++ = readb(efuse->base + REG_EFUSE_DOUT);
+ *buf++ = readl(efuse->base + REG_EFUSE_DOUT);
  writel(readl(efuse->base + REG_EFUSE_CTRL) &
         (~RK3288_STROBE), efuse->base + REG_EFUSE_CTRL);
  udelay(1);
-- 
2.20.1

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
