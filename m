Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9AB1CD43B
	for <lists+linux-rockchip@lfdr.de>; Mon, 11 May 2020 10:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9bn2cDGEtrzVFCSQa0bwVwedzu4FUFbsZhQGoA64gQ=; b=iuxadYeOY3JaT3
	8Wie9ty1+MnBv+LtpDXFl3ZW+a9tLeW2iA/rQ7mR3ULjkxCplkACecGzzHndtqOTxuMyCXpKjcG+x
	GlGIwicu0H8kGY8YbKMordsLXdqw12SvyyqSfxWs8AvgTktL5KWBm9qQjAvAF6vX2r8EAGY8fWwgm
	SettZoQA0RTeOIzfZFW+R4jSVkWokSnj1/MWZfclY7WB65RBEJ1/6EvcY10RJk7aD+266Mtq//pYq
	dmJ3Wh9JCYR8rCmQf7Rq/N93nTvgr0ZnbJNLGolcD0TqnUt7JK4WOkZBA+LzA73NJ9/ZBKGT9G82H
	cCQD6QlcbtsR6Epfto+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY48W-0004tH-2d; Mon, 11 May 2020 08:50:08 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY48R-0004r8-Tt
 for linux-rockchip@lists.infradead.org; Mon, 11 May 2020 08:50:05 +0000
Received: by mail-ed1-x544.google.com with SMTP id e10so531546edq.0
 for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2020 01:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=PFVV3MyuyArmq6VEg6bFhaO4YPGtkcfeFglEnkFCt1E=;
 b=Wn9bl5OXuGvOFKqcGfDD4t3Xb3pkc/qvGkaiLdjIqS4fT1CS+lMGWJGb4KuroiLPwQ
 7OJa/eqHt7ToNKD4kGwPm5mxzK+Sd1fa0//rDmRaZosfI+v9BqKts0YA5ZrxLu8ul+Nw
 J+VDEO05dHhRtR4YeDltui5cD8UHO7JQfh3hk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=PFVV3MyuyArmq6VEg6bFhaO4YPGtkcfeFglEnkFCt1E=;
 b=AboRZ/9YYioLclTMpaNemTDnfmPbAxbg1KiDLXuVlFjT6V3raOC6uCaRMAu4Ej5JUd
 iqC0fMwR0f+c03RZujA9QwZZrNmq3zrmiHjqWgc0Pai/BasfvHwZTHapfJUnkBBf42O1
 euafDUgAFbjvgO46SL3GjBSWcMr9I2Z3+wMHP02V00GIo1/LpWbnsRyM3/0zLJw+wT9j
 9x7pjH0SJ7IlouV4ZlAt7QX6ybgDqRUdoHWnN5sHgrUwG8PoTBU8OfO2mcxXj6tqCvcl
 Ag5FWcpD6fGr7Dh6HJn0iqVjDrrAfm+0wiQ+aNNMzzNXK7XvmG23g+d0GM/ehJ8a47/r
 bimw==
X-Gm-Message-State: AGi0PuauCgX538gunryXnLlnBIx1VNVCDoDytgjC/B5RjCpbos328ipm
 vi/5PpZNsFyiLaMVJyd+SO9Hl4ZTHcBFOBDHeZeN2w==
X-Google-Smtp-Source: APiQypIJVUoVd4U0CMyi6kDEsS3hUW3LbaSEWqPnXPAoZkA/2w8fSozrOCSrvqKbKMXPIkZtYFa0Mx9vt2gle5rFppw=
X-Received: by 2002:a50:a985:: with SMTP id n5mr12280302edc.338.1589187001344; 
 Mon, 11 May 2020 01:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <20200511075330.26462-1-frank.wang@rock-chips.com>
 <20200511075520.26557-1-frank.wang@rock-chips.com>
 <20200511075520.26557-3-frank.wang@rock-chips.com>
In-Reply-To: <20200511075520.26557-3-frank.wang@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Mon, 11 May 2020 14:19:49 +0530
Message-ID: <CAMty3ZBFykcDBWeVuA0kHvUoMYQCYLWGaTa+fmdrdKzZTtunRA@mail.gmail.com>
Subject: Re: [PATCH v4 07/16] usb: dwc3: add dis_enblslpm_quirk
To: Frank Wang <frank.wang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_015004_394161_300516BE 
X-CRM114-Status: UNSURE (   6.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Marek Vasut <marex@denx.de>, Bin Meng <bmeng.cn@gmail.com>,
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Belisko Marek <marek.belisko@gmail.com>, Simon Glass <sjg@chromium.org>,
 jianing.ren@rock-chips.com, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 William Wu <william.wu@rock-chips.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>, wmc@rock-chips.com,
 chenjh@rock-chips.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, May 11, 2020 at 1:25 PM Frank Wang <frank.wang@rock-chips.com> wrote:
>
> Add a quirk to clear the GUSB2PHYCFG.ENBLSLPM bit, which controls
> whether the PHY receives the suspend signal from the controller.
>
> Refer to commit ec791d149bca("usb: dwc3: Add dis_enblslpm_quirk")
> in Linux Kernel.
>
> Signed-off-by: Frank Wang <frank.wang@rock-chips.com>
> Reviewed-by: Kever Yang <kever.yang@rock-chips.com>
> ---

Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
Tested-by: Jagan Teki <jagan@amarulasolutions.com> # roc-rk3399-pc

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
