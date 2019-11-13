Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 825F8FB302
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 15:58:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DmLPhC2KUraHT4vYr7IC0Ir279A1E0tN0+k/OXAOzRQ=; b=RfhjV2SvwmRjep
	7sAdSRfT/720H5jBeBwiUipjXUsc2xsb785mjVoBcSM0eFlpcZZcm0YDfuRjwS7sDHQzi9AplnMk0
	LtWQrW6OjRspn7yuNJvCstXLRKjb7+jsk2bmlSPvoXBDBNZtv4b1xU83wZ5BRxFVK9mvzw5+RNKD0
	e2NbNghFR3KknLzoY6FX+zTU9CtZuudmqk5GTXgCyVt2RoKlr4RrAIz1GnbhMWlneYrI5WVt/1Y37
	YRppMEnZApMu5PWs+NsYq2yjBdG26kTgWZvrhICXTgYlinVp6pM+q8kXfJmXPwQOWPUsaXpYWta9g
	SMpewIFjeI5bBtr8sNxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUu6P-0007XU-JI; Wed, 13 Nov 2019 14:58:37 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUu6D-0007P7-58; Wed, 13 Nov 2019 14:58:26 +0000
Received: by mail-vs1-xe42.google.com with SMTP id a143so1506439vsd.9;
 Wed, 13 Nov 2019 06:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P0gOVwnr8RZ3Od+Q+Wt9xsj7qG4zJHYItky1OrLz/7Q=;
 b=DntvAiimaxy5eO8WmD5HKsaq8paiLEDN0gZRqng+Xx9VyAUgIR4AjdrfvQMMtiSy+c
 kzIT1vF4PL6dW0q4lybAHUTIe/fZzxIfPJN9RiZYhS7TtFC33OI9cLMC+p8J1NFNgr+S
 WZjtZx1j7LqChx64foynsNatq1nK0axjAIv7cDN2Qi3ahX7gnhLFxIaefxu8Zl2L1/Bu
 cm/hKxxW2E7gV0/llr8hOWDu2HTnj3y3VD+Z0wLlyeGdgupdyArE1NA7g2xNoI7Z1i25
 aKclClidbXBgBWKKlVODU4ZNnkr4+R2uaHhlOkkhZqSP8r1MhySo2WiOit311x1n+NJV
 r9KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P0gOVwnr8RZ3Od+Q+Wt9xsj7qG4zJHYItky1OrLz/7Q=;
 b=Z/mA7L9GWuVj2K9h1vU0+AW2Zg7Qnjao54rPpGZQMcX4pl7FgqnMcwbbvA0cCKtKWH
 1m8EUS0SoX5xxO4T0v4vlIWuBOI1sAOS5A0h2N9NQHLRAORLpT8o/GleaAsd1WtNH69f
 sKS7N43eUuzgTes2v0Q5xfi+P45CpvmzKi7Na6o3FZMeAKkRUDmHzD37hk1YLxsgnKy4
 09yVo9GJHadgE4oioCd/6Y4M94uW4ScqzaDcBwU5VG0yDYl9dTC+UVucmgs9yaLVtI/Z
 /7WryWIa6JjUqlIGBduszIMcc5ArXSZ/KS2p31vuwrChGcP7HIPQVDiAoGz9kBurCmUn
 UPUg==
X-Gm-Message-State: APjAAAXptvRjQmSx6eurUGCXyNlR6dhlrLHd5x8xP+6oNBaOemXXXRV3
 wr6eUioIITpjL10vYpv60rasJUtL7UpFZvZ2bMbFvXYM
X-Google-Smtp-Source: APXvYqxOKdMQmyVzBi5/m0j44R6MDEw4mJPbYG+meE9Q68qt41BmgvfQGKrtpZllT36/0ae1bMdzT/KICvdwYOGzTAE=
X-Received: by 2002:a05:6102:20d1:: with SMTP id
 i17mr2197246vsr.186.1573657102968; 
 Wed, 13 Nov 2019 06:58:22 -0800 (PST)
MIME-Version: 1.0
References: <20191106163031.808061-1-adrian.ratiu@collabora.com>
 <20191106163031.808061-2-adrian.ratiu@collabora.com>
In-Reply-To: <20191106163031.808061-2-adrian.ratiu@collabora.com>
From: Emil Velikov <emil.l.velikov@gmail.com>
Date: Wed, 13 Nov 2019 14:57:55 +0000
Message-ID: <CACvgo51sNzSHCcix89giYEq=iGJa_-nYbgpOKY-MxPRGCM_cRQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] drm: bridge: dw_mipi_dsi: access registers via a
 regmap
To: Adrian Ratiu <adrian.ratiu@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_065825_223687_1782E1EB 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (emil.l.velikov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 "Linux-Kernel@Vger. Kernel. Org" <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>, kernel@collabora.com,
 linux-stm32@st-md-mailman.stormreply.com,
 LAKML <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, 6 Nov 2019 at 16:30, Adrian Ratiu <adrian.ratiu@collabora.com> wrote:
>
> Convert the common bridge code and the two rockchip & stm drivers
> which currently use it to the regmap API in anticipation for further
> changes to make it more generic and add older DSI host controller
> support as found on i.mx6 based devices.
>
> The regmap becomes an internal state of the bridge. No functional
> changes other than requiring the platform drivers to use the
> pre-configured regmap supplied by the bridge after its probe() call
> instead of ioremp'ing the registers themselves.
>
> In subsequent commits the bridge will become able to detect the
> DSI host core version and init the regmap with different register
> layouts. The platform drivers will continue to use the regmap without
> modifications or worrying about the specific layout in use (in other
> words the layout is abstracted away via the regmap).
>
> Suggested-by: Boris Brezillon <boris.brezillon@collabora.com>
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> Reviewed-by: Emil Velikov <emil.l.velikov@gmail.com>

I should have been clearer earlier - I didn't quite review the patch.
Is is now though.
Reviewed-by: Emil Velikov <emil.velikov@collabora.com>

Admittedly a couple of nitpicks (DRIVER_NAME, zero initialize of val)
could have been left out.
It's not a big deal, there's no need to polish those.

-Emil

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
