Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7D11DB47C
	for <lists+linux-rockchip@lfdr.de>; Wed, 20 May 2020 15:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZA2ghGscbPcc3TYvlaoBsT1qqH3xqi+6TkAIdFu7Lg=; b=jc/WaQwlZHWAYA
	D1U1iZZj7qqU4buZUkQpnYfwdlfXVCgnzt0ggmG5pCvgAynkaxuH7h/q2l5x8JJYRf6N93XQ8U+3v
	NMLcqvDAhJt4QC/ucLS75e2YOeFQWtUYyMTpi7s5O5IiYkSe4WRWYR6Yoq1VVE15Tjpy5W36xlimj
	YrVs+hpRDDLwQXZCXWz3ltX/W4RAPOlrvV5m3on9VEw+WlI/OqBvZgbGbAdLT1igERx2i4iIBAp9/
	qI5Jf9fTG4GE3hjot8SjWVikiaDSS0bclDjCmJBiRT+N86drpmeJPKN812RuIbnrFWvtctbhmG83M
	+CtPCfpx4+ZagNxYIDBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbOM8-0002mA-Vg; Wed, 20 May 2020 13:01:56 +0000
Received: from mail-vs1-xe44.google.com ([2607:f8b0:4864:20::e44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbOM6-0002le-IP
 for linux-rockchip@lists.infradead.org; Wed, 20 May 2020 13:01:55 +0000
Received: by mail-vs1-xe44.google.com with SMTP id e7so1747734vsm.6
 for <linux-rockchip@lists.infradead.org>; Wed, 20 May 2020 06:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=woAnCIhfYEJLipFe8EyZcfmluPA2MaZuO37zxR3vgb4=;
 b=Kn2sSWppvhHVjhct9KDLJTMw91TD7ZhUf0aMA3bkc7nFiCuylrwPze0UQIIik4DdOJ
 N8ygw4qG37hZ4LHNY8si5tGH3HklqEHflv2DJvrRkKRCdtpNUzBOwiHIIC825z3XC27w
 7xtWGQ+V/TuL/PwTDEN/VYctGxhSFhPcvqHBqAU4cmdRTFHBU9sBFQjDz0+6yPs0WqFT
 PP30AWltwUF1x6fa41Om76QWWKdFgIkXZkLwHczf2i9haOcLXssXGQ6kQQa1ImVx05kB
 wpBaCZOoqNg+rV/uxU6KgDv7gS8RRNmiyFtGsBDzK3C8iOiVnjAAqkUYPoESt2ueMqBK
 ANfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=woAnCIhfYEJLipFe8EyZcfmluPA2MaZuO37zxR3vgb4=;
 b=S7KCbnt1oSOcVuxcpa5Y1lR3pwznCKqenxZA/mi3n+3DFxGha7QhXATUTeF5y54JCY
 Wo2TPY1yizozitlk5mllj2dRK0VL7qAOW4TlQkMYQ4euKlcuWWdo+SIPN/cw9ALNQGxr
 xjXLkqVaCoHR0i+5eppl+0+FKYU7yfnzEyoGuS4XHZgi34+t5CCEY1/64EJir/cPEIBP
 DD/XICrtl7/fk8dY1PlhLUS01CZognrlcp0muxL0Xc2oTdtyzF3IhMoreRooxzjm6zCt
 qxJm5qOkyr8J4Gt67fuM6F6FjOUpH6oZrwYfKC4y6iGbhbmOQPy1HmnT9szlFrelNF5R
 +/og==
X-Gm-Message-State: AOAM530vffn0G3dpXAMbRyeWeMdm2NaBtFoVCTbpeqFR53XJkCtZLEAB
 9R6Zx5yfjX1n5aLYwllwEtnSAJxY/npLy9gIzxtJ5FhfhCVf3g==
X-Google-Smtp-Source: ABdhPJzM3ZY8vwut7M1/Mc1Vzn+Fk4KTxo0f0WuLZt4UD6+dKcBpOhqFbJjxWDWosv1dzsuk/FboXI+w3tieJ8IjTSg=
X-Received: by 2002:a67:684a:: with SMTP id d71mr2937165vsc.176.1589979711982; 
 Wed, 20 May 2020 06:01:51 -0700 (PDT)
MIME-Version: 1.0
References: <9122588d-683a-936e-1305-c34124e6702c@nextfour.com>
 <CANUX_P1q22J6ONRqTCDwwEMtmbGbCmS=C1WK6Zz0OqG_v2qcSA@mail.gmail.com>
 <f27e0e85-6e45-15bd-1460-4140671ee4cd@nextfour.com>
In-Reply-To: <f27e0e85-6e45-15bd-1460-4140671ee4cd@nextfour.com>
From: Emmanuel Grumbach <egrumbach@gmail.com>
Date: Wed, 20 May 2020 16:01:43 +0300
Message-ID: <CANUX_P3kqY9wMBmAZoKsdzQv0TdW1pY7d=yqp5925Ryhkyq=Xg@mail.gmail.com>
Subject: Re: iwlwifi firmware loading problems, rk3399
To: =?UTF-8?Q?Mika_Penttil=C3=A4?= <mika.penttila@nextfour.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_060154_627593_1FF1A629 
X-CRM114-Status: UNSURE (   8.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [egrumbach[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-rockchip@lists.infradead.org,
 Emmanuel Grumbach <emmanuel.grumbach@intel.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Johannes Berg <johannes.berg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

> > I guess you need to debug your board :)
> > The interrupt is not coming, then.. there isn't much the driver can do.
>
> Well it does get interrupts, but stops getting them during fw loading at
> some point which causes it to fail. I have seen similar posts while
> googling and they are happening on x86/ubuntu and popular platforms. So
> I'm afraid it is something with iwlwifi or its usage of MSIX or such.
> The kernel version is 5.4.

You can try to disable msix.
In iwl_pcie_set_interrupt_capa, just goto enable_msi.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
