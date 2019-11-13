Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECCABFB635
	for <lists+linux-rockchip@lfdr.de>; Wed, 13 Nov 2019 18:18:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOBlIs5fjt8twpuMC2i/6FaV2M+cLXaUrQ/wOfCODSs=; b=h854ITlzMhWG0X
	0TAViOVBo/DM8CQrv3gJE2mrQL8kr1wbEEUMKVy7JlFBHERV5xexZhg2en4AJQQ5KMrYU3vceLKN2
	5zd3VH7gT3FDjubwMXEKBNNeCHaYMEj0b9fLnGX2gA2PznrrYfyfkzdIvnw6+ibiL5Hjgp47jQNhM
	Bzf2fxaZ0AShSVWf/rlrs9il752rhfdfGubluiMBA55cn2ztd1KsaNOfcxxKkwz94H2Y/Tj3In7aC
	XJBHJjxfnv+sjME1BZHmsqeWO9puYJJAwm80Izj3iJpigLfb/iZdjsPSXSEk9UAQChEJH7DeiTRFv
	C56i2A646nOb76+qP/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUwHm-0003G1-Dk; Wed, 13 Nov 2019 17:18:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUwHj-0003DY-5B
 for linux-rockchip@lists.infradead.org; Wed, 13 Nov 2019 17:18:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id d22so3450380lji.8
 for <linux-rockchip@lists.infradead.org>; Wed, 13 Nov 2019 09:18:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WgpjeDP92LtqHtJXxSWI//ZDvUBHvFnRmWqhhvkv3sU=;
 b=KvuV0fh/hJQyvRYAMyLtyX7TtdrS4cRfCetdL0REIkE+MZASromLfykUpUl271O+CX
 vFdpD6FCntAze0eiaLeCGewSPBYzWcMyf8dAip0r8ZYXAdwDlGykLbTwiivROOyI2jcu
 UqZ9m0g904KiBxG4PAMdp1dQu69o/iLfXSGCuUSWnkAM1RZk4SKm02qXOtPg478nMo1w
 2u+noeVIBVZdLdjiJORmfrpGe4D8XpbYfR67n+nowmC4HyebMgPh4pG3a2eeWqFYwJwr
 JuqVAGOMP2v4G0vVkcsS9JARWxnX0VZhRa5GgVLcIqhEySXkSYAdEzE9f/BdNMWNDQFQ
 6eXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WgpjeDP92LtqHtJXxSWI//ZDvUBHvFnRmWqhhvkv3sU=;
 b=UtVPPeBz+6NWDslf8yAwHQ4qT/dJAPojDvqoSaB7UPbjo2FsVwVBLuAeJXLJOBOwUL
 TjzlUXWaDd+sLrUcJUK1a8aBvIpUpYA9GxxQLpdXaPuq2zaViaSbXNSWAYJny57fiGDY
 z5ZRlQ/2+b/XKJN9PHL6b+UGA4KpJjfQeN4ee1fYhut0LeCvlE1FOFTEf2hnuiAG3hzi
 KnXgaLVlY1Uhi54UNJtuRmcu3FiwcxoM7DHWbZlyqiOUgvAGmaJrh5VtWNSqD11Aog14
 mq2iGFJWxey2r4kal1Hx/Cfu5iN2pyRlzHGCDcExSFjtb50jV0qXn/w8W9JdZwTJOEhT
 wySg==
X-Gm-Message-State: APjAAAXnzAH2LCQOnLuOgLTF0jMqnYkOvwFq8QRrAsRLmS8Gj+B19i3l
 suqy2luR+/DOS4dFuvIiErOJMixh6+kCglmHGNfEdQ==
X-Google-Smtp-Source: APXvYqzb9LSbjvyTYyJro6roGfmfcXuB5wD3OhRztdb8g4aem5VqSxWcjf73KgosmX+l6Ndl56jWPa35+BrI2knRZzU=
X-Received: by 2002:a2e:5c46:: with SMTP id q67mr3315497ljb.42.1573665504123; 
 Wed, 13 Nov 2019 09:18:24 -0800 (PST)
MIME-Version: 1.0
References: <20191112141819.GA22076@localhost.localdomain>
 <201911131438.KT6pnFZ7%lkp@intel.com>
 <ac16492e11899ef4ec981f7f2e84714c7d61d2a7.camel@fi.rohmeurope.com>
 <CACRpkdYAmye8wT39fqy=LN+6pXDvrcQ0SyDTCvG7aSgea3Uumw@mail.gmail.com>
 <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
In-Reply-To: <b67faf875fd0060ad36db04b29c109f01e58ab1a.camel@fi.rohmeurope.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 13 Nov 2019 18:18:11 +0100
Message-ID: <CACRpkdZy73oFmHcjGuxCCYD0kxWuAi4xp9s+fHVLcGXwPzc5TQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION
To: "Vaittinen, Matti" <Matti.Vaittinen@fi.rohmeurope.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_091827_212212_BBF38D23 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
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
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
 "alexandre.torgue@st.com" <alexandre.torgue@st.com>,
 "mazziesaccount@gmail.com" <mazziesaccount@gmail.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
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

On Wed, Nov 13, 2019 at 11:06 AM Vaittinen, Matti
<Matti.Vaittinen@fi.rohmeurope.com> wrote:
> On Wed, 2019-11-13 at 10:40 +0100, Linus Walleij wrote:

> > I think I already merged it, just send a new patch on top fixing the
> > problem.
>
> Hmm. Are you sure you did merge the pincontrol part already?

No I confused it for the GPIO part. Sorry!

Please keep iterarating this patch.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
