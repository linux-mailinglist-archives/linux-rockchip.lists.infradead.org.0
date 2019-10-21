Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E584DE189
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 02:40:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6IJX2Y500EsgeZ8fvwHQhiodt5O7oAmGIAJV7sMe2s4=; b=HnBrrh42KG06eW
	U8Wesj2Gs2xmvs99L+jQhnzEJkI+sLlfJlU7S73icVxvnsS1QodMPVOwo2O9jTGztID1A5l5pNFcI
	snha3v5bneDCEMYRDBAxuysuB09pj540l8S2MuQbHHSh6DKykEyUtMqPXQDya0XjLiQgfY87N/nq2
	Ki5mvQHolDDa1ny7EEvvhzVtDUpl391aqzWhojZrC9PnOZJho2LmYyOfUg6CzubFEQIwvU+CL7oYX
	BR/K4YbLP9EcD+QmGbvxcXB8HdtPq7JQ8tn2cV8J1xE2Kyrg+l7ZHnxKKfeSJq9PrhmGO5Ob+KqLy
	5UHgqPheKilVHj0gAozA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLkn-00035z-HV; Mon, 21 Oct 2019 00:40:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLkX-0002tW-LN
 for linux-rockchip@lists.infradead.org; Mon, 21 Oct 2019 00:40:44 +0000
Received: by mail-lj1-x243.google.com with SMTP id n14so11368851ljj.10
 for <linux-rockchip@lists.infradead.org>; Sun, 20 Oct 2019 17:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=m6Xo9B6o9SIZMKltywI4CiX1SZ99OwUFgC+m3ay2Ymo=;
 b=zroUUUrfgfHLCjgOyR2uQ2lLhWyKSM7uEj1yfxnkSSToT1Elup+0aFqlDLFwh9G/n2
 KmTyKhUQBndxk5V92CCxunqRlxvT1jz39Hi0bjTlcO8/JBejG5joPR6goquCAbY1q8r5
 c4pKHfEl0bulWgTXTtr+82ImDmgMw2jNre53NjUrfx2uQJugQo9wuJWUaquqK5XdTNWa
 wWxphcewpaq4w17KtJTsfDZ/G/9tO6b1j3OEyi+2KchtoK+DEqJnQ+3c6IUkzZHm7KCf
 s5m8n4Dl+/ZQ+m8Jd5Kh/kDLz/KDGqnFn1t5nhMws+ktDfHLGN+r3tgJ4NqeOx0DdF9m
 GLwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m6Xo9B6o9SIZMKltywI4CiX1SZ99OwUFgC+m3ay2Ymo=;
 b=ZXQxMTztqFYQwjqDtaurxP3o7EDBgVKghPdVtSvS16PKl5eOM16MaRVOp9NBcIU/pw
 PE9dVTr0aNvNMH/m7u+1YWXY6LNXx+tQosY+aeFIYDvHSEo7UdFrMFInAz9sHJEjKofM
 fahlGwOJDGT1HHkYGlPE+lFF9JPVBhH3D24rdcj6Jc3FCektnaJjSh4ndg685HgwUs0D
 u++hl7o+sTgnTrXX88KKbWa6w90XrSadyfXmjtZl69MxAMkK3n+xAVPIMWCn+P5JvP7S
 xWnhJ1QxLvno0QeTtrYD4Q9COQwW2QucrhTQmaaxf0x6b2sAUVjuGzB1hxTCDI2NYcpc
 wfhg==
X-Gm-Message-State: APjAAAUWpLvPgDilS1HEnAnlnVLgIqJois51/g5Zn+AR6qvZ2O/IvJ9z
 g2SFQz6Z65eR8/8aZagGhzco7Q2xLxWt7f1fp4PLKQ==
X-Google-Smtp-Source: APXvYqzrokn9M/Ubcg0CEqbAzJJBvsXnB3LI0TFr0LTW5W/Xiku2p7auDuAK7OWy/bhF9IEAr+uI2BTb4+ImUhUhYhk=
X-Received: by 2002:a2e:a0c9:: with SMTP id f9mr13031793ljm.77.1571618440273; 
 Sun, 20 Oct 2019 17:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-18-robh@kernel.org>
In-Reply-To: <20191016200647.32050-18-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:40:27 +0200
Message-ID: <CACRpkdbhPPRDixrR4rWSopFEd-5AKpjHF1-Su-ViAGMDLQiKkw@mail.gmail.com>
Subject: Re: [PATCH v2 17/25] PCI: versatile: Remove usage of PHYS_OFFSET
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_174041_733551_A3EAEB13 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> PHYS_OFFSET is not universally defined on all arches and using it prevents
> enabling COMPILE_TEST. PAGE_OFFSET and __pa() are always available, so use
> them to get the physical start of memory address.
>
> This should have probably used 'dma-ranges' to get the address, but we
> don't want to force a DT update to do that. At least in QEMU, the SMAP
> registers have no effect (or perhaps the only value that is handled is 0).
>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch to fix build failure on some arches.

Always wondered how to do this right, now I can fix other stuff!
Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
