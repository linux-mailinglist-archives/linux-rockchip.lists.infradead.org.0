Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2535F1349BD
	for <lists+linux-rockchip@lfdr.de>; Wed,  8 Jan 2020 18:48:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4+jbC6naxnbJPzoBAv5DwTZZ+/UambSZht5w54Wiqs=; b=bL19/oL3Y4mreM
	cY7SePGSGvGgd3TJog1upst3WQsFNaQvNrQRV724oZzOtCzS5lHiOfs/zDwxDNcUmk2hI87iB3Ni7
	C9OhDGqDXQat5dn/4+wbsHP63Z4VtEtDi2zkmMeCv+2HSCXpbsZ2p/q2Z6rS5sOwUkl0HidMSGyXp
	lZvtx5wt4d9a8C074b45gYdXQFXLZBoxoyCz0dj5TZWc6n7eIJ/XXe5LNzwb9ilZNxmzUyb7KIyfi
	X0BQyW8C7zporenZweJsrsrK/+FhOYue1yogABIn8QyaxMKgRbfFHgtafDzXTx5+teJfUzq72iPP6
	GuirskUh/8B1cIuBBgIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipFRK-0008Bc-O2; Wed, 08 Jan 2020 17:48:18 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipFRH-0008AV-SU
 for linux-rockchip@lists.infradead.org; Wed, 08 Jan 2020 17:48:17 +0000
Received: by mail-ua1-x944.google.com with SMTP id 73so1437137uac.6
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Jan 2020 09:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6fjeBXfdA5v8j8/xbcj6l8Tou8rGGc9L+qfhjRz0QRI=;
 b=LTssbe7xKtfJVDgsmMn2w88kRfx17N272Mz1utTbhfsLCjMFjPKI/5jq1OVsGaqA/q
 XdMmhJqxW1e83ABFojZyXrW0egWKzCycXb0O62a+JoAHeY5Xx8k6d+4OXPTQq+lexwaq
 twnq+XxLCP5A58S4nIVyd5jdb6MYrvhrtWTf8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6fjeBXfdA5v8j8/xbcj6l8Tou8rGGc9L+qfhjRz0QRI=;
 b=smjrXOjjkvD1tQfkLN/qQS7U6VO1VZOsWR6yBwyz3WCpYGT82vT0ipXPeEtPqPGCwk
 x9k1Fy14ORVdf8mqbPcG9crjRizVEUZKAzgRJFP1o/ei6PmkLIEzMaSzGdegJXKljL17
 6ph1nvymWYQDp5oTsuDjWDrRUKJpOxoSU3u8Oi20iSoOthcNV9SgKOi/zGPlRFk/maRG
 yswdUKpGdZ1TVfUHKjC6RpPt551MwAVho2x2W3cVyu358uY1KjjFsuIQ/tgmuOtMhK4Z
 7pfAIC42bvE02Pzrx1cEIw7RcrYQgFGOpb6OaNInBs/E5GpeEZIl5Bj7oakaRF60Mhry
 pIuw==
X-Gm-Message-State: APjAAAUc6CJlVixJsh6t/fcWGouZk4x6IFFW2hPW698AiBj51sKrNh/1
 rJxmZZwCm6/DWNmIlMfrvVJOybTsMEU=
X-Google-Smtp-Source: APXvYqzuqcac8r8E60c3YM2nkKUBx8rcjB+xzJLorqxo76S/28T5x+e8AdvaluTDrrUx5ENYuukKPQ==
X-Received: by 2002:ab0:b94:: with SMTP id c20mr4207254uak.67.1578505693491;
 Wed, 08 Jan 2020 09:48:13 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com.
 [209.85.217.54])
 by smtp.gmail.com with ESMTPSA id q25sm925035uao.0.2020.01.08.09.48.12
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Jan 2020 09:48:12 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id y125so2422043vsb.6
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Jan 2020 09:48:12 -0800 (PST)
X-Received: by 2002:a67:e342:: with SMTP id s2mr1091753vsm.198.1578505692418; 
 Wed, 08 Jan 2020 09:48:12 -0800 (PST)
MIME-Version: 1.0
References: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
In-Reply-To: <20200108092908.1.I3afd3535b65460e79f3976e9ebfa392a0dd75e01@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Jan 2020 09:48:00 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WFCjzRGv=8C-LU9O+fRi_C6E6zuyM7SyAX7CWx=wHnGw@mail.gmail.com>
Message-ID: <CAD=FV=WFCjzRGv=8C-LU9O+fRi_C6E6zuyM7SyAX7CWx=wHnGw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: rockchip: Use ABI name for recovery mode pin on
 veyron fievel/tiger
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_094815_915427_49A39043 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, Jan 8, 2020 at 9:29 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> The recovery mode pin is currently named 'REC_MODE_L', which is
> how the signal is called in the schematics. The Chrome OS ABI
> requires the pin to be named 'RECOVERY_SW_L', which is also how
> it is called on all other veyron devices. Rename the pin to match
> the ABI.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
> Another misnamed pin, I should have noticed when fixing the
> name of the write protect pin ...

...and I should have noticed when reviewing.  Sorry about that.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
