Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C72726704
	for <lists+linux-rockchip@lfdr.de>; Wed, 22 May 2019 17:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6UczRaxGFK+jjKtJdOuX4XuvnM+CNDzstgsrKp3xODo=; b=M/6YcSr4hboCPZ
	PmrT4RjfktlORnJdtTf9oIpuglh1nyJfkb2AKeBDN4SO5dfxIkujehSdiA0dYIUNu1yonNtQeGexa
	LA09O0nQ4vJEkp3LljxEf82r8xPzuL9uBmv8G4qlLpGnH/M9bwwne7Jtk2utJcbVRo1pKepjRpkF8
	IvId4vWWFMSJE7VVDJzyo+ui9hrqQguf8zob9Ky0v9cgOn2IQo8fJMGYjVFPUtW7w9li9Eh6LHknV
	IyyLfSAZpMVKoZR7o02TbziRVMSBRZw4oj2/TAD2HRWNCiREKs97h1Al4lpbDpvNaPVYaq6fUgddN
	qLtudNQDYLei2jSF42Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTGX-0007Y5-5H; Wed, 22 May 2019 15:34:53 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTGT-0007Xg-SG
 for linux-rockchip@lists.infradead.org; Wed, 22 May 2019 15:34:51 +0000
Received: by mail-vs1-xe43.google.com with SMTP id l20so1680226vsp.3
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 08:34:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WZ7wpIvoEkeLq6FBM1KkrI1MSDApRyeyZAyhjJ4c/Jg=;
 b=O/Wfywd0s4mY7h0+2IscQOPlZ/yTMmy48pO4ogf4j4wwWqwfIC1jNvI2xbSwImPtMN
 +1GU+Col/vGn1jOmS10cSTnnu3rj94VkxQSUaB8px/4eh//rFgLYdDJUrbOsWeGFLX9X
 /6K8P0wOjwVbBd8F59mzhYJ08e+4P7/hgx8Rc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WZ7wpIvoEkeLq6FBM1KkrI1MSDApRyeyZAyhjJ4c/Jg=;
 b=TVg1dpYFbRmoxyhiu83ZPzchCiBCTTJB6J/rv1tvnSZxp9ynMxpUibWKRbqG4woyQ2
 clq2khDg/d4iAJvV5maWWJKGJM7vYaYzsZBiiF3FKbpbrOj/EyyngtGVmuOxMrLCVUEP
 aTAsHxj2B0/zHNo0KfG2tsrwzMzs0vL9XUsKe0BDZUQm0a96U7LJbWUqMYAqloaQ+RG5
 A5kCLvX+WbsM53BDdQlEqo7mLQYEgEYkmRs+iqdvkMyqb5owAwY5meiR3PxRhXpMdkot
 7Z5UOwUQEnDAjIcF7aKZq6kRopTG+k/DqDHWjxTYpmmUwUdIJyorGHPvitUXHmanCJJ0
 /UbA==
X-Gm-Message-State: APjAAAWA6qlhbEez/Ok5l3tDTjiCztgft9VH9yDLGpe4qLT9rfSlnsCy
 DNX/k7Vx6639uR+CkeQ1tMWpZ4rOIVs=
X-Google-Smtp-Source: APXvYqxIckoTL+MrMi0/LYH5nTx4p47Q0eXh0VH/d2Fk1Lk2wzyUEdP88c3q9aQRFyNMlkI0qwIOZw==
X-Received: by 2002:a67:ea98:: with SMTP id f24mr36437318vso.128.1558539288079; 
 Wed, 22 May 2019 08:34:48 -0700 (PDT)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com.
 [209.85.221.175])
 by smtp.gmail.com with ESMTPSA id l125sm5552434vsd.31.2019.05.22.08.34.46
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 08:34:47 -0700 (PDT)
Received: by mail-vk1-f175.google.com with SMTP id p24so607722vki.5
 for <linux-rockchip@lists.infradead.org>; Wed, 22 May 2019 08:34:46 -0700 (PDT)
X-Received: by 2002:a1f:1e48:: with SMTP id e69mr15455909vke.16.1558539286538; 
 Wed, 22 May 2019 08:34:46 -0700 (PDT)
MIME-Version: 1.0
References: <20190522141236.26987-1-heiko@sntech.de>
In-Reply-To: <20190522141236.26987-1-heiko@sntech.de>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 22 May 2019 08:34:34 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
Message-ID: <CAD=FV=UxwqkHpsxXhEHrQDY6MtymeT3Gn_G4Q5xSh6pZVWTRHA@mail.gmail.com>
Subject: Re: [PATCH] Revert "thermal: rockchip: fix up the tsadc pinctrl
 setting error"
To: Heiko Stuebner <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_083449_936930_70304053 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: zhangqing <zhangqing@rock-chips.com>, Linux PM <linux-pm@vger.kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>,
 Brian Norris <briannorris@chromium.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Matthias Kaehlcke <mka@chromium.org>, Zhang Rui <rui.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi,

On Wed, May 22, 2019 at 7:12 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> This reverts commit 28694e009e512451ead5519dd801f9869acb1f60.
>
> The commit causes multiple issues in that:
> - the added call to ->control does potentially run unclocked
>   causing a hang of the machine
> - the added pinctrl-states are undocumented in the binding
> - the added pinctrl-states are not backwards compatible, breaking
>   old devicetrees.
>
> Fixes: 28694e009e51 ("thermal: rockchip: fix up the tsadc pinctrl setting error")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> ---
>  drivers/thermal/rockchip_thermal.c | 36 +++---------------------------
>  1 file changed, 3 insertions(+), 33 deletions(-)

In case it helps with the urgency, there are lots of people who have
all independently needed to identify which commit stopped their boards
from booting mainline or broke temperature reading.  I'm aware of at
least these reports:

Reported-by: kernelci.org bot <bot@kernelci.org>
Reported-by: Enric Balletbo Serra <eballetbo@gmail.com>
Reported-by: Vicente Bergas <vicencb@gmail.com>
Reported-by: Jack Mitchell <ml@embed.me.uk>
Reported-by: Douglas Anderson <dianders@chromium.org>

I can confirm that my board boots again after this revert, thus:

Tested-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
