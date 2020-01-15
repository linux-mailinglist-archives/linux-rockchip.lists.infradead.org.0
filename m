Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5935313C6E3
	for <lists+linux-rockchip@lfdr.de>; Wed, 15 Jan 2020 16:04:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7tQM1x/pYkQSmInmE+YRis6M4RF60H1Vm/cXxByoOs8=; b=WjHvppHM3GOUV5
	/Pjpvjz1jCtOks9bgD8K7p4Bgb+LPchT/MCyG9ddTbgU/glwpV8ry9W1nB08kNl5ynwLwROPEM68D
	K5gV6CtNt7hi+z+n46+IB/SAS/2xTbpW98pCiciPYrgHPjPXB58hGT5raCOsl3nvbeWfnjkzOAREs
	dnC0qWjq7ofHLjgWsLOWY1Q2bl5lISglskcQobVLPb8HUfPp4dR2JPUhSt+Oocak2Su+6k+Kobhm4
	7/0d2UXiHPotsN3aP4t3ZRD/1sR3R3UxtfRmqiQfXMM/vmUIw8pGmdomgj6rwLbT6cmOTxXze8wB0
	LCy+3ANb1aqxi+F+aJnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkDT-00076u-G2; Wed, 15 Jan 2020 15:04:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkDF-0006ya-68; Wed, 15 Jan 2020 15:04:10 +0000
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com
 [209.85.219.44])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 73EB224679;
 Wed, 15 Jan 2020 15:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579100644;
 bh=akWHDw2dp4HMSLYd4jf1ctNTQ9StsTvZ7vOESv0YuV8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=g8eCWlkZqL/jzhSCeIT40O391LHpxlseTdeisKA6ISmouHLCGxYtkunfdbcYe/gq1
 qeuwhwrmIrlubUv8W9g+Lp4d/chlvUSDur7Q5o1XJGfjFLTUpkx/xEj93spqHo1433
 OVsXhHMREYBBTAvyxY1VghmQ6qP6b3ERNrWAl9S0=
Received: by mail-qv1-f44.google.com with SMTP id t6so7477759qvs.5;
 Wed, 15 Jan 2020 07:04:04 -0800 (PST)
X-Gm-Message-State: APjAAAWHf2t21GUl9JpEuITrmzuJWgHGnryfYbHi85jNVp1SZYk1OpAj
 0nWnyuqOW3sTI/8A0KokbQtVljDoebSaWEaIig==
X-Google-Smtp-Source: APXvYqz6mHF45DAWUWUWDfYEf+gWOnBboSfWtevRnQLUakjB2gyNulzLFf97N1Zxr7ADVDMR2Ywe1q7Xh7UzrSo7WBY=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr22630609qvv.85.1579100643580; 
 Wed, 15 Jan 2020 07:04:03 -0800 (PST)
MIME-Version: 1.0
References: <20200114213809.27166-1-jbx6244@gmail.com>
 <CAL_Jsq+8X0oRykiQOKVyaxis4H0yO=nzUtnFF_BXdwBkuigr7g@mail.gmail.com>
 <12bbbdbc-027e-90de-fd57-291013167b06@gmail.com>
In-Reply-To: <12bbbdbc-027e-90de-fd57-291013167b06@gmail.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 15 Jan 2020 09:03:52 -0600
X-Gmail-Original-Message-ID: <CAL_JsqJD4CY6P+76pM69-4UPpTC+pE5BmyCm+gWhCA-Dd1YB4A@mail.gmail.com>
Message-ID: <CAL_JsqJD4CY6P+76pM69-4UPpTC+pE5BmyCm+gWhCA-Dd1YB4A@mail.gmail.com>
Subject: Re: [RFC PATCH v1 1/3] dt-bindings: mmc: combine common mmc and
 dw-mshc properties
To: Johan Jonker <jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_070405_253768_9F62D6D6 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Ulf Hansson <ulf.hansson@linaro.org>, "heiko@sntech.de" <heiko@sntech.de>,
 linux-mmc <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 7:02 AM Johan Jonker <jbx6244@gmail.com> wrote:
>
> Hi,
>
> Thank you for your explanation.
> I was not aware that was playing.
> So now we go from a 'simple' txt to yaml conversion to a complete
> 'change your node name first' operation.

You only need to update the examples, not all the dts files for now.

> Can you indicate if that common yaml file for dw-mshc and Rockchip
> is still a good idea?

Yes, that's fine.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
