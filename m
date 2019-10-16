Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D83B1D9152
	for <lists+linux-rockchip@lfdr.de>; Wed, 16 Oct 2019 14:46:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/4ThAtAfTnC782sKqWdp464s73FVWANDhhvq6CB4u4=; b=g3h0RvJ+e732U2
	f/moGZ38Xlp/uqPjpR5AwPrf/idzfRXM4+3WelQCgAMQ3Bgr94nx1fd6MXS/2uPadagPQlAfusdao
	GNInbP8PlhQ31f8T/PKYbe+kWWUq9opv2HbebZvTDYiI+84dMHgp4JtXbnDg3k20/GQd6rhwCESUC
	JWTjaiF9nc8gfgP4mscItgvPzv1oTLyNjNTE8q7PY04FKSEsC4BxPzChS5kR/aUIr9dbp83vOSQPb
	pEmFvqMD2DBJk26A0YPEX4stQqIhkkTyYL1Huyepu+cgZDE7o9RZxUZNiRxtJM1Iw9t0QQBcNxaYO
	0wY5uOb5ukYKIqrefCAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKigm-0005BL-RL; Wed, 16 Oct 2019 12:46:04 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKigY-00051a-1X
 for linux-rockchip@lists.infradead.org; Wed, 16 Oct 2019 12:45:51 +0000
Received: by mail-qk1-x743.google.com with SMTP id y189so22593814qkc.3
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Oct 2019 05:45:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=i4Tlr8aaqHcqUHLIi1olwgg1FH4Wnc+VjJ6hwR+CHZ4=;
 b=UKDHkw+AsWNstYEdbran6nGCcRGuySyOhWzrs1M+lF6UxheGXfo+LcAWpEEbBx+GjI
 HjCtcPXBKQn4jwJy1cZJVsUKfW7IO6g+YkpfauBjo4HyT9qSp02EWBGyi3sOIeJrqugJ
 aNGP9AwBpU3FcCHdLXdwuvd0t0yyMgPBETbTKtu2DJj+lWiGvu+3fDWYAeAUK+WOEA4H
 F8rc+vcjQUPehy7NV4y5BA6xRXQqtAm5Nw1nm8zc582Y3Dcivh6Z7Y2lxO5s11cE/WnM
 Jkct9SJXs7YpPuGDgp+lQ+hSbBaEXPMKYZarrYIGCt8VYRjlw3XqOdiH5adCuAlguYgC
 XyWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i4Tlr8aaqHcqUHLIi1olwgg1FH4Wnc+VjJ6hwR+CHZ4=;
 b=U6UvgDtFz8cvx+wTovtcJxlp2cbG5x7gZN+Yo+H7g12sHSonyxQxlodaY0pEOHmgh/
 GJuwiw/XEhBZvEUZWtCuGQYCz6pOH2t2k4JCx5mEvkPBfW9sQAC3xAGqMjjEF6TaR2/J
 GHaGWx9fQj6/IdU0cmeH0xgwhz0X++hb7OIvl7vxduC+YHg1HRjsuEhu62IE2B9nPTkF
 CrZ8sY5+K6hzERw6AGetw9Gg/fHX44SkjXXXLC6WJo+Xvurb/sbnWdGaEgyoUe9ZWn6g
 4SEfgv5ZBVJZGFvAzR+QhqUkbhKEX1LnD9FTBOXvvw/36L9panmqB+d8R+FjglE4vyOJ
 GbXg==
X-Gm-Message-State: APjAAAWtgyKFXt+ZCRX6M+7C1nEdsB0005tcqGhGfglaROs6E1Xt2GZy
 IkOl4Km2a3erkC4XB9MF0nGMFUiKkTZtRgDtEC133g==
X-Google-Smtp-Source: APXvYqwOzWo5VbcvN0U8TDnN+1xwjUKgMyRheHPwsr6x9P70GL0NWL/tbYoCuW4aAJr51oKXjooJFWTyMu0zdWYL5a0=
X-Received: by 2002:a05:620a:751:: with SMTP id
 i17mr39890335qki.340.1571229949254; 
 Wed, 16 Oct 2019 05:45:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191015091708.7934-1-jay.xu@rock-chips.com>
 <20191015091708.7934-3-jay.xu@rock-chips.com>
In-Reply-To: <20191015091708.7934-3-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2019 14:45:38 +0200
Message-ID: <CACRpkdbtfamz4H-RNUfdSz7eAOzRMgu-QPbVAVZKtC+Lg5VP9g@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308 SoC support
To: Jianqun Xu <jay.xu@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_054550_093235_8BA550CE 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:17 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> This patch do support pinctrl for RK3308 SoCs.
>
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

Patch applied!

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
