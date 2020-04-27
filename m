Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7291BAD08
	for <lists+linux-rockchip@lfdr.de>; Mon, 27 Apr 2020 20:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JWqRM+h4eFm6yHg2C+Lq1YIKJff2GJ8XpnpfEfXSrds=; b=im6DuB6hj5Ry5D
	4q1iRH3bZdDDvtwCYw01HD26Wj74DL+ppkmmHPSq7V+G0+DPTTj7vV4YYod9/OWhuXbxVwvDaOA8T
	8pI/ym3p0ja8p0uyx9SaIPuqrCoD1gYshz1WYN0Z28E8ZQhHq6xGi16EEPZzZ3Q2oKprD84ih8zx5
	1MYYwW3H+eAYsoxMNqAiFFORq4TOJ7/IUbeD92cY80BfRlErHUzmi8KmyeG1Zwxosx7RzOV519OlP
	IBloFAOjWhl/V0jWgtXVGrQIlPcIWUFQOeOwwQYRRIZvNTn35WXYZoDno7b2UG4gJusoKtdhwv0Ux
	LlJvIIvK30ttHguAVe4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT8hc-0005Rn-2v; Mon, 27 Apr 2020 18:42:00 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT8hY-0005Qh-MU
 for linux-rockchip@lists.infradead.org; Mon, 27 Apr 2020 18:41:58 +0000
Received: by mail-il1-x143.google.com with SMTP id c18so2472376ile.5
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Apr 2020 11:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hsIcMz/g/OO/+4cEowEjMaQCeoe1LlojgP7zMrqN/+g=;
 b=Sd2aQnLa+RIYS/b7j/xNnDoGlU7nfP4c6OQ53HE1g6UdzQ0dcWXJaZU04FnlXgS2yA
 ZDL3JV7igfI2w4avEJS6aCD/Yg+dyPam79SFTrvxpeDTknA0LqIZrzHqlAcR3tjESCoe
 eiJlV/rc0KZbDYD0S5x6BetYZ2VWccCU8dS60dUGwopEFnPuov6tWdLkWq7id7o34Kc0
 V8rHny98Mbs6+tjACqAp8Fvz4Gr+QIeof2tpIcJFfFE5MXLhEbg0osxXUQhL/swY2+4l
 Su3fRNcDULVpucN2AYq5BXVEIIcIBVOXimiepsJ8b2al3hjmbHSJSmShkKXj0A1FmpJj
 TzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hsIcMz/g/OO/+4cEowEjMaQCeoe1LlojgP7zMrqN/+g=;
 b=GKr2m9S2hUuIzXy9GB0/6aw2sc2re+dIPt1FWow1ruisrgxU/tTH8Z+KTM1I4uSorx
 3+Nud7ySu++OGwXNIrL85tcxnNIlu8IV52ttZMrtsz3zOeygHkAbvVRoFuemyFkvGCGg
 7yfvBLQiJ4YPO7FjKh1FEP9JM1dmr1zfZij2W7FgiiAEZKA+tVT6vGK0rT8yTmWpN79W
 /dIMMh76thL/d3H+PnacLQCQlYJcsrQIYPgG9aj76qZSZ8q5nBz/G4xCOKujaDCG+S/i
 E7SYalBSAWHgaqE2h7EJClL9lZL9HIYGWVWvf/DdO+w+OgsL2Uam+mR59u3cDTXZGdfX
 F7Hg==
X-Gm-Message-State: AGi0Pubymqh0YFNk+KHzprUhosbQj1SNt+fRcK1s+X3jiy4k2wlHJl23
 uqNBBgS1okUBKQ8Zw9xGk273OR1AmxubZC8K0TQ=
X-Google-Smtp-Source: APiQypINnvBUq9X38wYIL0TOt6wepZ9udKPO/g1h607/WS+S/bA0AE4kcIrnU+xU5C8RAoCnLG+4PnHGa0XxZS28xGY=
X-Received: by 2002:a92:cac7:: with SMTP id m7mr23303937ilq.6.1588012915175;
 Mon, 27 Apr 2020 11:41:55 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1578789410.git.robin.murphy@arm.com>
In-Reply-To: <cover.1578789410.git.robin.murphy@arm.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Tue, 28 Apr 2020 00:11:44 +0530
Message-ID: <CANAwSgSFPtdvEvacNf6DhzE2fCabgZSBNnZUf0+nQErDWpErOw@mail.gmail.com>
Subject: Re: [PATCH v2 0/5] mfd: RK8xx tidyup
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_114156_732975_DF71F4C3 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
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
Cc: linux-rockchip@lists.infradead.org, Soeren Moch <smoch@web.de>,
 Lee Jones <lee.jones@linaro.org>, Linux Kernel <linux-kernel@vger.kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

Hi Robin,

On Sun, 12 Jan 2020 at 07:25, Robin Murphy <robin.murphy@arm.com> wrote:
>
> Hi all,
>
> Here's a second crack at my RK805-inspired cleanup. There was a bit
> of debate around v1[1], but it seems like we're now all happy that this
> is a reasonable way to go. For clarity I decided to include Soeren's
> patch as #1/5, but since I've rewritten most of my patches I've not
> included the tested-by tags.
>
> Robin.
>

Can you re-spin this series, it seem these patches are lost.

-Anand

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
