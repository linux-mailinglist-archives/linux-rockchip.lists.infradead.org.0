Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7A68DE17C
	for <lists+linux-rockchip@lfdr.de>; Mon, 21 Oct 2019 02:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UEoGTk2vaJ1lzXmHUnfQBK61vJ3i2lp56+GX1ZgtDuI=; b=CM+cI3N7GCvGIR
	E9sdxSfruTjby4LqUg90/PvaIh/+gn0nXKlMlES5qK+g9iaIvhj0r5GtDEmbNwCn9fmWUI8G+0o6x
	x2y5q2BqdSN3pnS3B4Rbbd0/6ygZgyRB1expvs/S+Vd86Wu634JnPJSn3TjY7hHDWdw9a7x3TTsEh
	7+vMvQh0nM8AqshmFD8MH/iat8/fB/zlJA9qo/2BpwULz2s+Qup8L6KRMdNLVmgJ+RbFkXw9gNA8z
	2e9JAtfjZan0MsWVlyh2Srn8c0teOHavm3S/7rPr3JSkEKC4Mk14Xcza451D2i7iVh9KBTIkCsDM5
	zL4ulm5GGOrWG26iupzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMLiY-0000ng-Gz; Mon, 21 Oct 2019 00:38:38 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMLiV-0000mk-Kx
 for linux-rockchip@lists.infradead.org; Mon, 21 Oct 2019 00:38:37 +0000
Received: by mail-lj1-x244.google.com with SMTP id a22so11407219ljd.0
 for <linux-rockchip@lists.infradead.org>; Sun, 20 Oct 2019 17:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cUqtT92AZ9lrnd20Di/UpzfjLJC1pbg37G7/c5IKKgY=;
 b=p21Noq3CV55U0A8VkoqX9m278rUiKa/xxLlh7wdB854lwoLBsD/p2++t0xmNEycGIK
 ANYQQ14P9emosdRn1GHlGds1elZqSmc61JQxwsOk+HFpvm/lrsd1yD/4YJTzbmMzt+Q5
 KTMY/zdvQSJLiuV3K6AQ1QGcIBpkc4R37ftWyRLh9IAm8FQQEHlxsp1q6SfVBobY10Xw
 7AExxFLYrCcP18tEtj8tAyDAm0jUCs4v0IoD/0RrJvvr1mMcc/9hWRivKyNDU07OfqMx
 gzbCsW2jvKPzSCUdmmeSrghFYS3dB0zTeJxQvDHXdK684lBmD+LdrJJQqxko/+eHauF9
 /HVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cUqtT92AZ9lrnd20Di/UpzfjLJC1pbg37G7/c5IKKgY=;
 b=JxX3lVSpDpeOr01fjUUkmYK/jJOXTrei+vW+yNQyxK7FrAhV5NZ7+hOdl20QOyVVpk
 gx32RzXDR+wFR5/oEEB0Gp4Lor+a6C8TOntsuNjrQ3eobDqYODL0q6mfBlIjM6aTvI+D
 eR0D/WeDWNwyZ/K8iMeD6sx9pE0oSy2JUrxblDf069zrZaEN59sFTnPx3gldxftvjFPV
 jkiYkbmEgafQwcPk47rabrop295wj7nRo6ZS832y7BIVHXIgYMvTdXX9o3Ppy0QMl5rc
 fIC+apUBkKYw9C8sKXCZG/ibepIOFIe5Hm62UpVsBlNQ2LRFyeaSlZYntNEimEKiaKIL
 liYg==
X-Gm-Message-State: APjAAAUqXxfew44AW3l7IwtjtNukynS8rUcUBTy/rTs4bI1Zf2yQtqh1
 u74eZ39NEZyv1lCL9+tB/e2Aci+uyqsY/mhjCYmckw==
X-Google-Smtp-Source: APXvYqx+Sv2qws2AyWYB+jVZthwdqV3ztSd28/13A632cZQGo2Czb2JB4I8085joST3g83E93e5BoQ6uVRT+sDP11QY=
X-Received: by 2002:a2e:9f4d:: with SMTP id v13mr12883755ljk.183.1571618313283; 
 Sun, 20 Oct 2019 17:38:33 -0700 (PDT)
MIME-Version: 1.0
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-13-robh@kernel.org>
In-Reply-To: <20191016200647.32050-13-robh@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 21 Oct 2019 02:38:20 +0200
Message-ID: <CACRpkdaxm-mdULkgm3NwncizELJ14SgLAnGLVy6UE+dUXN2ynQ@mail.gmail.com>
Subject: Re: [PATCH v2 12/25] PCI: v3-semi: Use
 pci_parse_request_of_pci_ranges()
To: Rob Herring <robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191020_173835_699248_0411E5B8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>,
 linux-pci <linux-pci@vger.kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, Hou Zhiqiang <Zhiqiang.Hou@nxp.com>,
 Ryder Lee <ryder.lee@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Andrew Murray <andrew.murray@arm.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Scott Branden <sbranden@broadcom.com>, Jingoo Han <jingoohan1@gmail.com>,
 rfi@lists.rocketboards.org, Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Tom Joseph <tjoseph@cadence.com>, Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 10:07 PM Rob Herring <robh@kernel.org> wrote:

> Convert V3 host bridge to use the common
> pci_parse_request_of_pci_ranges().
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
