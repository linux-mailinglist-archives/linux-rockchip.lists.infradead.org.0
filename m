Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C91A1B8E43
	for <lists+linux-rockchip@lfdr.de>; Sun, 26 Apr 2020 11:39:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tisPKWOqNh01wxos54ZHp5Dwq7MhYHxeWcfYczcdaRk=; b=ec3TeTgqrA9u1g
	IhBogX7ZdASrrAn+724EBCsBx0rGAJhNFHn4hoOM/pOooO5KN3aBaH1s8/b+HjAW9Q4wW9zlPrHH8
	kN57bhzg8rL+97ricefhTeEm/rsnELEoC0oEHucrlJ2+YJF4/GUwTwaw6b6kwWUfGxdh+ML71J+yc
	GCLSzoe5zmPKc7DgxIdM8qa55kPeNF4lgn50gIcnq35HwhEdQFRhO7bIGLEoRq6zkfKcCV8V8ch09
	vzzflQhedrw9XlIy5u+KR+Uzr2HOODSWvoaOyDMxqB90rQ7AxPexDFcvvAhQZUDtbHL9h21kudLvx
	1xqSE3A70YGzjQ62AMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSdkh-0007ai-Qi; Sun, 26 Apr 2020 09:39:07 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSdkd-0007Zc-2i
 for linux-rockchip@lists.infradead.org; Sun, 26 Apr 2020 09:39:05 +0000
Received: by mail-ej1-x643.google.com with SMTP id s9so11498991eju.1
 for <linux-rockchip@lists.infradead.org>; Sun, 26 Apr 2020 02:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sF6eZ2waa1XejX3pPgjh9PgLPT2Rc5Uh7REeeSgdCZo=;
 b=A30cVAGgx9v7iTX5Nx3f2HZT9Hv7aAAnOHdJ1axaCxX8+MScsZLYjA3ZDzvw5ZQLqn
 hsoGArqQiUNuKurxLCx3QBgoUxMHV24urD7LISREDNIHltGoJzI4sSYqj7GO7mEwFWmy
 qPWg897IZKxQq0oCv1FxBKoJoYor0rEu+YkeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sF6eZ2waa1XejX3pPgjh9PgLPT2Rc5Uh7REeeSgdCZo=;
 b=l54txq2iB2NvVYOp1+ZFFKKaYAV3iP3GZmg7DyQ9LdSWW+AKUAMUBmk1L++809i5rw
 c9We5PDFzV86TAS1as3s2gaZ0188WJ422d8pfGmgvtZYCn8FidHmheZy2k3zj8AsXu9Y
 SCwAeBYlTL7894yhdM1zF5uUK/QGKrmb54oQglwuct/rvsGmnGDIVkPWIySl5RbZSKum
 roG+9jLQOB+586O8wuK4ta1lJzmBACNFwwAsIrV0mwWlBPbEb2YyFw5RMk4U6K7b7WXU
 rc3XkuOXjOkLqtE3IPZqFAfH8Y/muN8epc1pP3CQu2v5di3QKS8Lr9im1jSJyy5Uqf2v
 DFUg==
X-Gm-Message-State: AGi0Pub/Jo6J6MVp8dtz6BukZlTXiRX6zwM5LDhpowRfu5T4Xqe+w1yY
 IAMEkECINNFFINsgVcgUKTfm6LKlQpildX4Bk4zAVw==
X-Google-Smtp-Source: APiQypKWVFjC63JhRV4VB1FwU4tzBM7SkkyOWhT70dd48kKz6Pljm6fbylc1BVGngOqff6+PS8mMFVNFfkjOxsxck9M=
X-Received: by 2002:a17:906:fcb7:: with SMTP id
 qw23mr14441191ejb.256.1587893940629; 
 Sun, 26 Apr 2020 02:39:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200425110354.12381-1-jagan@amarulasolutions.com>
 <20200425110354.12381-4-jagan@amarulasolutions.com>
 <016196395ae8077b@bloch.sibelius.xs4all.nl>
In-Reply-To: <016196395ae8077b@bloch.sibelius.xs4all.nl>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Sun, 26 Apr 2020 15:08:49 +0530
Message-ID: <CAMty3ZBOPB3dzyK68B6NQo7fNn_EE5X-e0+vwXaOrxxMa+8JFg@mail.gmail.com>
Subject: Re: [PATCH 3/8] clk: rk3399: Enable PCIE_PHY clock
To: Mark Kettenis <mark.kettenis@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_023903_264701_F7BA1476 
X-CRM114-Status: UNSURE (   8.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Patrick Wildt <patrick@blueri.se>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Simon Glass <sjg@chromium.org>, Kever Yang <kever.yang@rock-chips.com>,
 U-Boot-Denx <u-boot@lists.denx.de>, Suniel Mahesh <sunil@amarulasolutions.com>,
 Philipp Tomsich <philipp.tomsich@theobroma-systems.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Sun, Apr 26, 2020 at 1:54 AM Mark Kettenis <mark.kettenis@xs4all.nl> wrote:
>
> > From: Jagan Teki <jagan@amarulasolutions.com>
> > Date: Sat, 25 Apr 2020 16:33:49 +0530
> >
> > Add PCIE_PHY clock enablement support on rk3399
> > clock driver.
> >
> > This clock is enabled by default, so do nothing
> > if it triggers during the PCIe PHY probe other
> > PHY users on this clock will simply fail.
>
> This breaks Ethernet on my firefly-rk3399, and I suspect it does the
> same on other boards:

Yes it does. It's affected by the v5.7-rc1 sync series. Will update
the fixes on that series, thanks!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
