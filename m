Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA53CD9999
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 20:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JxGPnkj60FfdOC8O2mM7kjh4If6XKfyte1oEiRcpDFs=; b=YFW
	DWXfB/YR9oq15zjBvb0vhvkpj2O+AQ0slkkQh023rPP3952k519SdXAbrWbsv9MRYlFGyReXVSd5Q
	c1dbsGGJ1HAzXr+OzGEcSBufsHdcb+U16dnHJ7VZ1plLRVX/rHs1I6+GdYvDed05CaRN3GNPc8vyu
	Nbg3OQKy24YBVVA0LnXdIkvBkDdn/bVkM4uNiOuT01k3FUvAIKcKbfMqe+uZoKWP2UllIpm8+DLjj
	sn6gLml83Q4Y+3kkJSU3haalT0T2S7fcmb+O3PbRn0+gZbzMkV/TKSFDr6Wpj32guTeyIhSaI3ZP5
	w7RQ/95J+jN/4I2X9y/b/TGwWWojyXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKoRM-0000qk-CA; Wed, 16 Oct 2019 18:54:32 +0000
Received: from mail-qt1-x82f.google.com ([2607:f8b0:4864:20::82f])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKoRJ-0000jd-F4
 for linux-rockchip@lists.infradead.org; Wed, 16 Oct 2019 18:54:30 +0000
Received: by mail-qt1-x82f.google.com with SMTP id j31so37676835qta.5
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 11:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n2pzg/F1PAaXiCu+MHnLqPXLd3mnb7aifjFTMjbNufc=;
 b=B8PfCzJH0Oz/FiZ/gxXC2YMnwCRku5+bD1W7no+rmT5CzbB79oUhrFfgB6Ac3NxEEq
 L74V0cks7A6+JV6k4VIb38opwxce6I6ipxVRPhxNtAEF4H8Eer2yVIiDVdbw3HBhxg7M
 bOxCV04y00lpWMTK/zckbxwYhx4t8A2zBklmA6tc6AtWVCFXEYkUA6RswZArfL/ORY6Y
 Af2MVkFzjqIbw5isEmX2vaMpDLK+hBuz7vfIagb5gWdGpAJRaWAiMzH2Fpso8Q/kTUlB
 msRlQelGYlFWueYBerL28eMJ1+0BZF3WCT4Nqy12afds81IsCjK3y0O00Fh44SukM/+h
 2A4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n2pzg/F1PAaXiCu+MHnLqPXLd3mnb7aifjFTMjbNufc=;
 b=aEhLTTCd3X9gHj+bA3QlXSltvH0+xxcryiGITiYjvSiqKbRBnAU0AX2CVeuSEkIEw3
 00NCVxRLSpxOP913KzJ3mmVNUrIXdGg6Ryc70Fbq+rXehXndyHU0QYO8YhTjh1k2hOWW
 UvwAV63X+n3xKv8oCAVrkAP0xgjb+mgYH4Ngs/1gAJ75h7U/bmWdc0N4sbAS8C/FOmcG
 KLcCSeBjdS2pbW8ZHw45RB1duQp0q/ScZOaYW+6bBeaqF6rg9SpmSSOdS+0vVt+dsRmc
 2bZBeSnmhi1UiElXH8NpJ/izbb1colITsNeZhOyA8l5saPeeujbmdXr2gCkkn8whx8I1
 LuLg==
X-Gm-Message-State: APjAAAUGSFn4kQzvO+3qr1d6zcK2zTwgrorUoNExWx0QBKOtfP/Vj8Tz
 8SkNAB5i2kv8lGbrzsfurnRwgM0EJ+8oxgXauO/RGla1zrw=
X-Google-Smtp-Source: APXvYqxZQneihO05KVDBz8ls5XEL6N9NbMdIfqqVONI/Kl/xnLQeP+JQ4wGFhEWVt/zdOtfZSxB8a+mInUKjz8faarI=
X-Received: by 2002:a0c:cdd0:: with SMTP id a16mr44192548qvn.160.1571252067033; 
 Wed, 16 Oct 2019 11:54:27 -0700 (PDT)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 16 Oct 2019 14:54:15 -0400
Message-ID: <CAMdYzYp9xdtb6eiUs-Tiq4jJ-jr31LTzng2o-qAbOfu_63zXVg@mail.gmail.com>
Subject: rk3328 USB3 controller
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_115429_532259_1C7FCD8F 
X-CRM114-Status: UNSURE (   4.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:82f listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pgwipeout[at]gmail.com)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Good Afternoon,

Is there a particular reason why the USB3 controller on the rk3328 has
not been enabled?
It's enabled on the TeamFirefly source [0].
I pulled it in to my device tree and have been using a USB3 SSD as my
boot device for over a year now.

If I were to submit the patch, would y'all be open to pulling it in?

[0] https://github.com/FireflyTeam/kernel/blob/roc-rk3328-cc/arch/arm64/boot/dts/rockchip/rk3328.dtsi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
