Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A091BA8E
	for <lists+linux-rockchip@lfdr.de>; Mon, 13 May 2019 18:03:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TMedxW0SfjYJr03CGMFH4TJpAfJMZw77Y1pdJTSQRNk=; b=lKYPDckHBVlFoE
	dML7FKNAD7I75cr7gnmiBpYh/UGLKF/7iCoDP0CHxKFKxbqs4E84NQr00FYQY5Z6GHLkn4Ev1gxsH
	5I3lIfFL2Y3Z94N9y9BoZOWxBBF2hcDXD4mU1head4c1rJElVdclv9awdkjG9joR4vJ9jmMn6N8dW
	lC/TIpsnB7yeeswsF3ah9MPWZm2mukE+lFIp3kNzu4ft4vfjSZvRQq+Lvf7k9cLmkIwhJ/jfQVOLP
	QhTEeozzQEpOvCp/bARGN9DISjlaaZUyhmSjG6+ZexsoBNuYx9btCX6pGsHcpUIwJUXfGVZpHzOnH
	OC6T91xAAarh9DIEKOEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDQY-0001mL-11; Mon, 13 May 2019 16:03:46 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDQU-0001lk-Q3
 for linux-rockchip@lists.infradead.org; Mon, 13 May 2019 16:03:44 +0000
Received: by mail-ua1-x942.google.com with SMTP id a95so4987298uaa.13
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 09:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LhqduOUwS+O6B5Ih2GpJJXA30cnrCE8y/7lD4jak7zA=;
 b=br89Uottwez2IWUAknU6LNVFpUXyul6AjXPYo2WtfeR027fkRHL+kRf3UQD7snqoFU
 QeaulT/nCD5jsWybxpHI/SLO0sdvx6XGQgtabNpbIld1CJlQ0/UTyNK2xxHsL/ICpODm
 69A9I3JkhxSVco01rZ2p+C20qosS5jrtbVRT4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LhqduOUwS+O6B5Ih2GpJJXA30cnrCE8y/7lD4jak7zA=;
 b=No/SL6k76BvfnKylmhnrDWvEEYuyTAGYueXgtmsI1fH5AUrBrk0slRJZeo66hSnmiZ
 0bZrtwFtLiWAZ+dsV7C5vEcIO/bq8cSS9V46w/MnnNDG0vulSLpyOmDmbT4wjjT/K0/5
 sEcf86qgq07wD25G3Dk5xMk/f+ZE4OyF805nWnBQUHIfHVO6y2UwA7atI7g1TZOX0Y06
 WaQrA5vZap/bXl8/87Ae63znQjce2yJsP1bR7bcsCtV6Z4Te9QTBVSXwljejQW1Tdv1j
 znjmHiyg4ZlII8XgaLMnpqzTPBHhbZOkfVt1vaJvUDoMU0qiCqAocmQpqVtbA7Wg2P3g
 kKKw==
X-Gm-Message-State: APjAAAU2JKgVy9UMBFJs0Ka4+Dg7lXabmeAQOjjqEYYV+uDB1S26E/Tp
 WtrmjnaB6tIyYRGhXpJb0NfEhzLLEyc=
X-Google-Smtp-Source: APXvYqwiSGvAqQkFjM1R4XJ5tx2+9ScTcLNVEVm1i2NtvyANvBfx4x/gJRDocxJ8YWlI/Zux0wClgA==
X-Received: by 2002:ab0:5506:: with SMTP id t6mr7067779uaa.88.1557763421015;
 Mon, 13 May 2019 09:03:41 -0700 (PDT)
Received: from mail-ua1-f41.google.com (mail-ua1-f41.google.com.
 [209.85.222.41])
 by smtp.gmail.com with ESMTPSA id w136sm11022344vkw.18.2019.05.13.09.03.40
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 09:03:40 -0700 (PDT)
Received: by mail-ua1-f41.google.com with SMTP id t15so5022100uao.5
 for <linux-rockchip@lists.infradead.org>; Mon, 13 May 2019 09:03:40 -0700 (PDT)
X-Received: by 2002:ab0:20c1:: with SMTP id z1mr12511820ual.109.1557763419691; 
 Mon, 13 May 2019 09:03:39 -0700 (PDT)
MIME-Version: 1.0
References: <20190510223437.84368-1-dianders@chromium.org>
 <20190510223437.84368-5-dianders@chromium.org>
 <20190512074538.GE21483@sirena.org.uk>
 <CAD=FV=Xg96SGg-JDjEJRtC6jACcN9Xizcr-zV4rQwXYvuEvmRA@mail.gmail.com>
 <20190513160153.GD5168@sirena.org.uk>
In-Reply-To: <20190513160153.GD5168@sirena.org.uk>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 13 May 2019 09:03:28 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
Message-ID: <CAD=FV=Xm-2oxit7doVAYJr28c-xHqUdt9PQC=WYpYfsAyUxuaw@mail.gmail.com>
Subject: Re: [PATCH 4/4] Revert "platform/chrome: cros_ec_spi: Transfer
 messages at high priority"
To: Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_090342_870341_4C6E3981 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Brian Norris <briannorris@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>, Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, May 13, 2019 at 9:02 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Mon, May 13, 2019 at 08:57:12AM -0700, Doug Anderson wrote:
> > On Sun, May 12, 2019 at 10:05 AM Mark Brown <broonie@kernel.org> wrote:
>
> > > It isn't clear to me that it's a bad thing to have this even with the
> > > SPI thread at realime priority.
>
> > The code that's there right now isn't enough.  As per the description
> > in the original patch, it didn't solve all problems but just made
> > things an order of magnitude better.  So if I don't do this revert I
>
> I'm not saying the other changes aren't helping, I'm saying that it's
> not clear that this revert is improving things.

If I add a call to force the pumping to happen on the SPI thread then
the commit I'm reverting here is useless though, isn't it?

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
