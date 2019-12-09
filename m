Return-Path: <linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-rockchip@lfdr.de
Delivered-To: lists+linux-rockchip@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3085111726A
	for <lists+linux-rockchip@lfdr.de>; Mon,  9 Dec 2019 18:05:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9l7asQh0aITd33pZt+MmfqvqmiM7lbNUp2/Ul6Nv/BU=; b=bQBY4p8rj9ORCJ
	+q3DdK2nrQa0JNs715Zw9qZEILU7q+fKfnCtcavA8jYZjk7mzHL3eBR764orhT7dT7udUq6w+M9nO
	ef1WQQBEj1DONbcSaOKU3gzBb/szX0A/xnT2RXdSThZXES9Vc5Bm/HX9QRJaVENDyJohqbmEqHNW9
	NBok3+yPEJ6L47KJI2VTEVHjuGxe9bBWVtOjSSCh8hErpIWoFIQsrJEUSFScz3luNpebVDWj+wC/F
	EnKfPoDdqBNySf9rsNdesZwYZrhMwwTeOf2CznBQtdONrQBg8IrFtC99FaUWGPQK9wSFhk5xCBVl1
	4+V29tJP2EW5Hfev0Mbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieMTl-0003NX-OW; Mon, 09 Dec 2019 17:05:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMTj-0003Mu-Pj
 for linux-rockchip@bombadil.infradead.org; Mon, 09 Dec 2019 17:05:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YU2tYXsp2GBBsr4G0U6n0fc7yLb4kMLHpVFrZEia0zU=; b=jfhsYQtb06cQ5geTnBTucievdH
 oVVutQ774c4DtRBi3ma1et0enWCF5YsZk2hg8AMZba6BZiFz+kL8oeV8sRACTtyRJfReTNfweBrRV
 kTFIJo/oRJ3m+zQqPaCSEhVVIvoBt1OSLvBM3wGguudC5mjqqXaz7cPwl+bq0gBBOxFsldbvAUpNs
 G+ZbC4lCS8aabFo+/Wu+iTuT1K1cdKp6YIXiTP2GrLhbiMoQ6ZMoSyOVKqvQM+p5NELySJgsijrLb
 ZvINac7hO56bNBqQYcdYFO/GRkockH9EI0ci9/9lA65UTTr4axua6NJMAyr9EUgM/2Sn4oRp1anvm
 3/zpfpVA==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieMU9-0000IE-KP
 for linux-rockchip@lists.infradead.org; Mon, 09 Dec 2019 17:06:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575911124;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YU2tYXsp2GBBsr4G0U6n0fc7yLb4kMLHpVFrZEia0zU=;
 b=h3uL0UIJb4pic8WSeKwbBCAXv4Q8sxPveIWwPdtmZzDelIpAj2rcVx2WTT5gyq2j0r0H/S
 38hAI08ASkXvai7hR9+gRdlGFmNwK4OzjDXZZ85pwjAQLbnQk8+R7fdk0oXRdWYKOGQziu
 7pQRx+jsnhPnSPqTQJHq6ItCnJNloF4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-PdEyLpJ7Md-RN-yy8qvTJQ-1; Mon, 09 Dec 2019 12:05:11 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3E427106B1DD;
 Mon,  9 Dec 2019 17:05:10 +0000 (UTC)
Received: from x1.home (ovpn04.gateway.prod.ext.phx2.redhat.com [10.5.9.4])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8B05D60C84;
 Mon,  9 Dec 2019 17:05:09 +0000 (UTC)
Date: Mon, 9 Dec 2019 10:05:09 -0700
From: Alex Williamson <alex.williamson@redhat.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [Question] rk3399 vfio-pci/sr-iov support
Message-ID: <20191209100509.5cb950ac@x1.home>
In-Reply-To: <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
References: <CAMdYzYoPXWbv4zXet6c9JQEMbqcJi6ZEOui_n82NVmrqNLy_pw@mail.gmail.com>
 <b597b9a6-870a-8fbd-6490-59734c04367f@arm.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: PdEyLpJ7Md-RN-yy8qvTJQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_170613_789990_6E9510AC 
X-CRM114-Status: GOOD (  17.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.5 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Heiko Stuebner <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>,
 linux-pci@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+lists+linux-rockchip=lfdr.de@lists.infradead.org

On Mon, 9 Dec 2019 14:07:02 +0000
Robin Murphy <robin.murphy@arm.com> wrote:

> On 09/12/2019 1:28 pm, Peter Geis wrote:
> > Good Morning,
> > 
> > I'm back with more pcie fun on the rk3399.
> > I'm trying to get pcie passthrough working for a vm on the rk3399, and
> > have encountered some roadblocks.
> > 
> > First, vfio-pci doesn't work on the rk3399, as the pcie controller
> > doesn't bind explicitly to a iommu.
> > [37528.138212] vfio-pci 0000:01:00.0: assign IRQ: got 226
> > [37528.138254] vfio-pci: probe of 0000:01:00.0 failed with error -22
> > 
> > # find /sys/kernel/iommu_groups/ -type l
> > /sys/kernel/iommu_groups/1/devices/ff8f0000.vop
> > /sys/kernel/iommu_groups/2/devices/ff900000.vop
> > 
> > # virsh start openwrt
> > error: Failed to start domain openwrt
> > error: internal error: Process exited prior to exec: libvirt:  error :
> > internal error: Invalid device 0000:01:00.0 iommu_group file
> > /sys/bus/pci/devices/0000:01:00.0/iommu_group is not a symlink  
> 
> That much I can help with somewhat: the major impediment is that RK3399 
> doesn't have an IOMMU in front of PCIe. As far as I'm aware your only 
> option is to resort to the "here be dragons" CONFIG_VFIO_NOIOMMU mode 
> (which I don't know an awful lot about beyond that it's a thing).

And it's a thing that's really only useful if your motivation is to run
something like DPDK in the host and you're not concerned about
isolation between userspace drivers and the host kernel, and you don't
mind tainting the kernel.  It's not useful for things like assigning a
device to a VM as we can't readily do that without an IOMMU for
translation.  Thanks,

Alex


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
