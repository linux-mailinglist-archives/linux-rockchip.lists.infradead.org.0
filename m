Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C302FAD24
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 10:40:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oRdhiMU4dYNVrDekwr2TX/zIuv8Viv/P9wkFiGyVyNA=; b=BHYt1m1SUPz5Ys
	zi7DmKvA7uR3KQH1bSjHMTaxJ40tBQk3I6LX33zt0iXJtuX2ntHln8vT8qPt6R9T5hurgg+vw6zWl
	rJ4goKo0+C+X6DeXsYeBZ+QiakNRaTz9A5wEaASqR1g/So+7/zRR3DIRYsX5BjUuZ8AE+ZNOAGwN6
	0Rftohvtwt/C4vP3pDuTVCGeAZHULwTQnux1QrtWeJfp1nf7PHreOeSNydyXhP2pk/NFlbPqDFdVU
	y4CAp9DPvHpbLudij5Cg4Qli4ZEWyQ+3VQ9c87XQf2CE4ldqckFDUcBH3B9osuHOB8/cqzPkaLZBX
	VR1jg/69Njed1syI5Sig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUp8f-0007MI-J7; Wed, 13 Nov 2019 09:40:37 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUp8b-0007K9-FR
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 09:40:34 +0000
Received: by mail-lj1-x244.google.com with SMTP id n21so1750303ljg.12
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2019 01:40:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OrN8x9LyxKD7Xl1d/h9oz7KZmMmc0A5znbrf73E9+bA=;
 b=a676ZUZ7j8Q/YVK0Bi4A2cENhUW9DTDHjr8EReuSTbfFGUvF8kqNCs8Bo51EzHCTfr
 +kz0MvywQjdwCzed5RVZ/ltsXL1ng8RXtD1/6GPl8H7lg6uitxQgbRh7337hfbTPpxi7
 c0MPzJXnqSmZh5BK1mNl7g00o+3ot7uwReiUDx8mf+Xz1Qmy/8XCuM5WWG4bdkpxJ5O9
 LYO93Tg8FD4Z9PTaV5yL+ij91p4VjwPnYIyaurBh2OCqLjLQFUa58DJr7ylP/keLOwt9
 NA1P+BqzIB/OLwx5vA0TxDOn2k4Vuj1byrU1h72J11w+AOeOqJ3Z0rsAXcI5encccpgy
 Splg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OrN8x9LyxKD7Xl1d/h9oz7KZmMmc0A5znbrf73E9+bA=;
 b=rTtTVaFcYUG7hlUj7FP6e03LJLehXKhWo9wPhCYHARDLi6Es1XmKoHT/2Cr0plb5jv
 FkcD6UtAGqy9r7u1/lY8H62DedAl+aT7AtzSkafzefKwcc1YTAz7gGL46WbvaJAogv5w
 mpYUxkdGG3EHwL1mQiZg1YbS41MxnWCtQ5XJgJBSRPEsViIoyDrfWo1Bok75Z5bzSzz5
 yxA9fJEIXJAwmPGVL0X1K2FbFLZ/EnDoMKGKmCsv/23w4wwSdULU8br/GN+yIcs4umBB
 V71HCqZF5gwbpnr1QAPuVVZ3hh8SIPDnHKxBjFLrsF9/y2i96XqXJ66raTIAeITnVaQp
 GA5A==
X-Gm-Message-State: APjAAAWd9eH5iNBvjO2uJ1XWVFHaHE4YxGl8D/uKGFY8ag6NVTDyZqK5
 l9W2yupZkNU0ksrb+SIXJiM9APG9bSFzZd4u7MgS+g==
X-Google-Smtp-Source: APXvYqyOFp98GI7jY2XSDtkSfkrTqobC6IABhD/Iv9amdhinzj3w5mpyUY8ScymlvcvvrEEwwPsb6sgbGb33/qncEqU=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr1815120ljb.42.1573638029531; 
 Wed, 13 Nov 2019 01:40:29 -0800 (PST)
MIME-Version: 1.0
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
In-Reply-To: <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 10:40:17 +0100
Message-ID: <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_014033_541291_AE15883B 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "patrice.chotard@st.com" <patrice.chotard@st.com>,
 "paul@crapouillou.net" <paul@crapouillou.net>,
 "eric@anholt.net" <eric@anholt.net>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "jason@lakedaemon.net" <jason@lakedaemon.net>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "lkp@intel.com" <lkp@intel.com>,
 "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "wens@csie.org" <wens@csie.org>, "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "nicolas.ferre@microchip.com" <nicolas.ferre@microchip.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-rpi-kernel@lists.infradead.org" <linux-rpi-kernel@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "sean.wang@kernel.org" <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "wahrenst@gmx.net" <wahrenst@gmx.net>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 7:52 AM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-13 at 14:30 +0800, kbuild test robot wrote:
> > Hi Matti,
> >
> > Thank you for the patch! Perhaps something to improve:
> >
> > [auto build test WARNING on 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c]
> >
>
> >    480        static int wmt_gpio_get_direction(struct gpio_chip
> > *chip, unsigned offset)
> >    481        {
> >    482                struct wmt_pinctrl_data *data =
> > gpiochip_get_data(chip);
> >    483                u32 bank = WMT_BANK_FROM_PIN(offset);
> >    484                u32 bit = WMT_BIT_FROM_PIN(offset);
> >    485                u32 reg_dir = data->banks[bank].reg_dir;
> >    486                u32 val;
> >    487
> >    488                val = readl_relaxed(data->base + reg_dir);
> >    489                if (val & BIT(bit))
> >  > 490                        GPIO_LINE_DIRECTION_OUT;
>
> Right. Return is missing. I think I already fixed this - I guess I sent
> wrong version... Sorry guys. I'll do v3 with only this return added -
> and I'll send it to limited amount of recipients as I think most of you
> guys may not be interested. Probably to Linus W, Geert and GPIO list
> only. Let me know if you want to see the v3 (or other subsequent
> patches)

I think I already merged it, just send a new patch on top fixing the
problem.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
