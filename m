Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC8E3338A
	for <lists+linux-rockchip@lfdr.de>; Mon,  3 Jun 2019 17:30:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FLmr87Yw3ahnRgGIuQz7DXfAgaxOuOz2hJvTwo9EAAg=; b=O3WC2xpNLGPAbM
	Jw2WbKBuoW48MaHyS/BTEy4/ZAvuDB1Q7n6VOhonoaH1nstVLIc4TLmHTP5Y1F5AqqUWlI4JsP5xb
	3SaMF3FzTHy17HUJxiiiBojZdCXG33Hp8JVfqGMDeeSM3Cfeoyzzk54zeh5rsBafKck3Eyf0O1SDr
	Ab8ACIloUofkE44Cs/DewavKvWuDu2TCeLLs7sqvhCLiCtF1/unNekmz6ltfqcQX9xbuozLyPrfvh
	xPv+QOvkmNWBjZ6aj4H84jQCPyaAqKYrBM+lAuyvAmG5jXSKbq8aSKYOiu6/dK7KdwglMDrBsYjMD
	OnknsgEkenVSDC594Uvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXouo-0007D7-OI; Mon, 03 Jun 2019 15:30:26 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXoul-0007Cq-Q1
 for linux-rockchip@lists.infradead.org; Mon, 03 Jun 2019 15:30:25 +0000
Received: by mail-vs1-xe44.google.com with SMTP id l20so11514705vsp.3
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 08:30:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9judtLYfqHwUB7Dzm0O97CSTyEDxQ+ofDcdysxtxnb0=;
 b=SV84aIFwcxu5sQtz4Nc3vAuL8WayY9YwJpMXI/qPu6GbsJQr18rz8h9V7oHkhg0GP1
 xUP5txmTn1J8KStVFrf36YIhS03wm6GWKebOIreLtqeKZnZKA6k4NX9vKIl8vnHuI74D
 owyyEzL8cEjPTrp2WzUX3qTKDJdOlkpxMU7I4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9judtLYfqHwUB7Dzm0O97CSTyEDxQ+ofDcdysxtxnb0=;
 b=mVb75KN1tFUCg9MdGfdczW7TxepWBUsgPiJ/NNQv3CuKrlvumdS8VofydHG7VKO8lJ
 /KpAYUuUym2bI2i/Uyk+UZFiieJBJVL5gCMAQAzpXgBl4ISJ8+8tNf7WEsxeYcMSrYDO
 b2o32PibWvC6Nmn5F1nCGSOYs4SmCTt7Sz5iDnuamNKUjhIFrTPg1rYxCBKc7ExXjw5B
 SRPcC6/8hnntMsiACMKd0vC08d7MTHSfPasPCqgu7KqYuPHU1SmGjJORlfBxYvYprpYI
 +MJZAvY67/wLeFtXYlkuXtxqBM6y/vTFs/6mNR0khmSqA3QiIlkMZNHwWjABc3wpIW9V
 83lg==
X-Gm-Message-State: APjAAAXK8WAI6ZgiNolvOOrBaf1zXPnAVWfSMNaWiAzK5irXmxKi2yja
 yvDXM1UyIesOrFMQbQRqkdnIfBfnlXk=
X-Google-Smtp-Source: APXvYqynTacbDvxD9jLpC4678W7vG6snoErjCIonPPp2mSLW4KKIWOi+/u1EuKPRv1W6d6xI4ulMAA==
X-Received: by 2002:a67:eb14:: with SMTP id a20mr2321479vso.151.1559575822601; 
 Mon, 03 Jun 2019 08:30:22 -0700 (PDT)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com.
 [209.85.217.41])
 by smtp.gmail.com with ESMTPSA id b83sm15962741vsd.32.2019.06.03.08.30.22
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Mon, 03 Jun 2019 08:30:22 -0700 (PDT)
Received: by mail-vs1-f41.google.com with SMTP id u124so927098vsu.2
 for <linux-rockchip@lists.infradead.org>; Mon, 03 Jun 2019 08:30:22 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr12704099vsc.20.1559575427301; 
 Mon, 03 Jun 2019 08:23:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190507234857.81414-1-dianders@chromium.org>
 <79ca5499-6b7d-fe55-2030-283f5cfb1d27@rock-chips.com>
 <82480aa5-ab2e-11c5-8dd5-c395f72fc6e7@ti.com>
 <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
In-Reply-To: <CAD=FV=Us1WyEqYDqVSuA+QPCDU7ceMEwwaWKtLz9ZNBFD0E7NQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 3 Jun 2019 08:23:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XfxT+GB=WvuGm68SaUWhSg7vS5AjQ-sv9e5wdKN7sFjQ@mail.gmail.com>
Message-ID: <CAD=FV=XfxT+GB=WvuGm68SaUWhSg7vS5AjQ-sv9e5wdKN7sFjQ@mail.gmail.com>
Subject: Re: [PATCH] phy: rockchip-dp: Avoid power leak by leaving the PHY
 power on
To: Kishon Vijay Abraham I <kishon@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083023_869143_772DC4A3 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Elaine Zhang <zhangqing@rock-chips.com>, Lin Huang <hl@rock-chips.com>,
 Derek Basehore <dbasehore@chromium.org>, LKML <linux-kernel@vger.kernel.org>,
 Huang Jiachai <hjc@rock-chips.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "nickey.yang \(nickey.yang@rock-chips.com\)" <nickey.yang@rock-chips.com>,
 Matthias Kaehlcke <mka@chromium.org>, Ryan Case <ryandcase@chromium.org>,
 wzz <wzz@rock-chips.com>, Guenter Roeck <groeck@chromium.org>,
 Caesar Wang <wxt@rock-chips.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Mon, Jun 3, 2019 at 8:22 AM Doug Anderson <dianders@chromium.org> wrote:
> > Can someone in Rockchip try to find the root-cause of the issue? Keeping the
> > PHY off shouldn't increase power draw.
>
> It sounded like Chris already answered this, though?  Basically things

Doh!  Don't know why I said Chris when it was clearly Caesar that
answered.  Sorry Caesar!

-Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
